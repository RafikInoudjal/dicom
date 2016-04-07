DROP PACKAGE BODY ASU.PKG_EXCH_SAMOZAPIS
/

--
-- PKG_EXCH_SAMOZAPIS  (Package Body) 
--
CREATE OR REPLACE PACKAGE BODY ASU.PKG_EXCH_SAMOZAPIS IS

  PROCEDURE MATCH_SCHEDULE_GRAPH(PSCHEDULE VARCHAR2, PGRAPH NUMBER) IS
  BEGIN
    MERGE INTO ASU.WEB_SCHEDULE_GRAPH
    USING DUAL
    ON (SCHEDULE_ID = PSCHEDULE AND GRAPH_ID = PGRAPH)
    WHEN NOT MATCHED THEN
      INSERT VALUES (PSCHEDULE, PGRAPH);
  END;

  PROCEDURE MATCH_PEOPLE_AMBULANCE(PPEOPLE_OID   VARCHAR2,
                                   PAMBULANCE_ID NUMBER) IS
  BEGIN
    MERGE INTO ASU.WEB_PEOPLE_AMBULANCE
    USING DUAL
    ON (WEB_PEOPLE_ID = PPEOPLE_OID AND AMBULANCE_ID = PAMBULANCE_ID)
    WHEN NOT MATCHED THEN
      INSERT VALUES (PPEOPLE_OID, PAMBULANCE_ID);
  END;

  PROCEDURE MATCH_LPU_OTDEL(PLPU_OID VARCHAR2, POTDEL_ID NUMBER) IS
  BEGIN
    MERGE INTO ASU.WEB_LPU_OTDEL
    USING DUAL
    ON (LPU = PLPU_OID AND OTDEL = POTDEL_ID)
    WHEN NOT MATCHED THEN
      INSERT VALUES (PLPU_OID, POTDEL_ID);
  END;

  --���� ����� ���� ������������� ������ ������ ��� - ���������� �������� �� TSMINI,
  --����� ���������� ���, � ������� ������������ ���������, ���� ������� ��������, � �������� ���� �������������
  FUNCTION GET_WEB_LPU_BY_OTDEL(POTDEL NUMBER) RETURN VARCHAR2 IS
  BEGIN
    IF ASU.PKG_SMINI.READSTRING('CONFIG_SAMOZAPIS', 'USE_GLOBAL_LPU', '1') = '1' THEN
      RETURN ASU.PKG_SMINI.READSTRING('CONFIG_SAMOZAPIS', 'LPU_OID', '');
    END IF;
    FOR C IN (SELECT L.LPU
                FROM LOGIN.TOTDEL, ASU.WEB_LPU_OTDEL L
               WHERE L.OTDEL(+) = FK_ID
              CONNECT BY FK_ID = PRIOR FK_OWNERID
               START WITH FK_ID = POTDEL) LOOP
      IF C.LPU IS NOT NULL THEN
        RETURN C.LPU;
      END IF;
    END LOOP;
    RETURN NULL;
  END;

  --���������� ���, � ������� ������������ ���������, � ������� ������� ���������
  FUNCTION GET_WEB_LPU_BY_SOTR(PSOTR NUMBER) RETURN VARCHAR2 IS
  BEGIN
    IF ASU.PKG_SMINI.READSTRING('CONFIG_SAMOZAPIS', 'USE_GLOBAL_LPU', '1') = '1' THEN
      RETURN ASU.PKG_SMINI.READSTRING('CONFIG_SAMOZAPIS', 'LPU_OID', '');
    END IF;
    FOR C IN (SELECT FK_OTDELID FROM LOGIN.TSOTR WHERE FK_ID = PSOTR) LOOP
      RETURN GET_WEB_LPU_BY_OTDEL(c.fk_otdelid);
    END LOOP;
    RETURN NULL;
  END;

  -----------------------------------------------------------------------------
  PROCEDURE DO_LOG(PTABLE_NAME      ASU.WEB_BUFFER_TRANSFER.TABLE_NAME%TYPE,
                   pKEY_FIELD_VALUE ASU.WEB_BUFFER_TRANSFER.KEY_FIELD_VALUE%TYPE,
                   pACTION          ASU.WEB_BUFFER_TRANSFER.ACTION%TYPE) IS
  BEGIN
    MERGE INTO ASU.WEB_BUFFER_TRANSFER
    USING DUAL
    ON (TABLE_NAME = PTABLE_NAME AND KEY_FIELD_VALUE = PKEY_FIELD_VALUE)
    WHEN MATCHED THEN
      UPDATE
         SET /* REGIST_DATE = SYSDATE,*/ 
             UPLOAD_DATE = null,
             ACTION = PACTION /*,
                                                                                 USER_NAME   = SYS_CONTEXT('USERENV', 'SESSION_USER')*/


    WHEN NOT MATCHED THEN
      INSERT
        (REGIST_DATE, TABLE_NAME, KEY_FIELD_VALUE, ACTION)
      VALUES
        (SYSDATE, PTABLE_NAME, PKEY_FIELD_VALUE, pACTION);
  END;
  -----------------------------------------------------------------------------
  PROCEDURE DO_LOG(PTABLE_NAME      ASU.WEB_BUFFER_TRANSFER.TABLE_NAME%TYPE,
                   pKEY_FIELD_VALUE ASU.WEB_BUFFER_TRANSFER.KEY_FIELD_VALUE%TYPE,
                   pACTION          ASU.WEB_BUFFER_TRANSFER.ACTION%TYPE,
                   pFC_INFO         ASU.WEB_BUFFER_TRANSFER.FC_INFO%TYPE) IS
  BEGIN
    MERGE INTO ASU.WEB_BUFFER_TRANSFER
    USING DUAL
    ON (TABLE_NAME = PTABLE_NAME AND KEY_FIELD_VALUE = PKEY_FIELD_VALUE)
    WHEN MATCHED THEN
      UPDATE
         SET /* REGIST_DATE = SYSDATE,*/
             UPLOAD_DATE = null, 
             FC_INFO = pFC_INFO,
             ACTION = PACTION /*,
                                                                                 USER_NAME   = SYS_CONTEXT('USERENV', 'SESSION_USER')*/


    WHEN NOT MATCHED THEN
      INSERT
        (REGIST_DATE, TABLE_NAME, KEY_FIELD_VALUE, ACTION, FC_INFO)
      VALUES
        (SYSDATE, PTABLE_NAME, PKEY_FIELD_VALUE, pACTION, pFC_INFO);
  END;
  -----------------------------------------------------------------------------
  PROCEDURE DO_LOG(PTABLE_NAME      ASU.WEB_BUFFER_TRANSFER.TABLE_NAME%TYPE,
                   pKEY_FIELD_VALUE ASU.WEB_BUFFER_TRANSFER.KEY_FIELD_VALUE%TYPE,
                   pACTION          ASU.WEB_BUFFER_TRANSFER.ACTION%TYPE,
                   pFC_INFO         ASU.WEB_BUFFER_TRANSFER.FC_INFO%TYPE,
                   pACTUAL_DATE     ASU.WEB_BUFFER_TRANSFER.ACTUAL_DATE%TYPE) IS
  BEGIN
    MERGE INTO ASU.WEB_BUFFER_TRANSFER
    USING DUAL
    ON (TABLE_NAME = PTABLE_NAME AND KEY_FIELD_VALUE = PKEY_FIELD_VALUE)
    WHEN MATCHED THEN
      UPDATE
         SET /* REGIST_DATE = SYSDATE,*/
             UPLOAD_DATE = null, 
             ACTUAL_DATE = pACTUAL_DATE,
             FC_INFO = pFC_INFO,
             ACTION = PACTION /*,
                                                                                 USER_NAME   = SYS_CONTEXT('USERENV', 'SESSION_USER')*/


    WHEN NOT MATCHED THEN
      INSERT
        (REGIST_DATE, TABLE_NAME, KEY_FIELD_VALUE, ACTION, FC_INFO, ACTUAL_DATE)
      VALUES
        (SYSDATE, PTABLE_NAME, PKEY_FIELD_VALUE, pACTION, pFC_INFO, pACTUAL_DATE);
  END;
  -----------------------------------------------------------------------------
  PROCEDURE SET_SERVICE_REACHABLE(PSTATE NUMBER) IS
    PRAGMA AUTONOMOUS_TRANSACTION;
  BEGIN
    -- �������� �������� �� ����������
    UPDATE ASU.WEB_SERVICE_INFO S SET S.IS_REACHABLE = PSTATE;
    IF SQL%ROWCOUNT = 0 THEN
      INSERT INTO ASU.WEB_SERVICE_INFO (IS_REACHABLE) VALUES (PSTATE);
    END IF;
    COMMIT;
  END;
  -----------------------------------------------------------------------------
  FUNCTION IS_SERVICE_REACHABLE RETURN NUMBER IS
    NRES NUMBER;
  BEGIN
    NRES := 1;
    FOR C IN (SELECT S.IS_REACHABLE FROM ASU.WEB_SERVICE_INFO S) LOOP
      NRES := C.IS_REACHABLE;
    END LOOP;
    RETURN NRES;
  END;
END PKG_EXCH_SAMOZAPIS;
/

SHOW ERRORS;


