DROP FUNCTION ASU.SET_NEWFLUNUM
/

--
-- SET_NEWFLUNUM  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSMINI (Table)
--
CREATE OR REPLACE FUNCTION ASU.set_newflunum(pKABID IN NUMBER:=NULL)
  RETURN NUMBER IS
  PRAGMA AUTONOMOUS_TRANSACTION;
  
  nRes NUMBER;  
  nKey VARCHAR2(50); 
  DATESYS DATE;
  CURSOR cSMINI1 IS SELECT FC_KEY, TO_NUMBER(FC_VALUE, '9G999D99') FROM TSMINI WHERE FC_SECTION = 'SET_NEW_FLU_NUM';
  CURSOR cSMINI IS SELECT FC_KEY, TO_NUMBER(FC_VALUE, '9G999D99') FROM asu.TSMINI WHERE FC_SECTION = 'SET_NEW_FLU_NUM'||TO_CHAR(pKABID);
BEGIN 
  if pKABID is null then
    OPEN cSMINI1;
    FETCH cSMINI1 INTO nKey, nRes;
    CLOSE cSMINI1;
  else
    OPEN cSMINI;
    FETCH cSMINI INTO nKey, nRes;
    CLOSE cSMINI;
  end if;
  IF nRes IS NULL THEN
    if pKABID is null then
      INSERT INTO TSMINI(FC_SECTION, FC_KEY, FC_VALUE)
      VALUES('SET_NEW_FLU_NUM', TO_CHAR(SYSDATE, 'DD.MM.YYYY'), TO_CHAR(1)); 
    else
      INSERT INTO asu.TSMINI(FC_SECTION, FC_KEY, FC_VALUE)
      VALUES('SET_NEW_FLU_NUM'||TO_CHAR(pKABID), TO_CHAR(SYSDATE, 'DD.MM.YYYY'), TO_CHAR(1));
    end if;
    COMMIT;
    RETURN 1;
  ELSE
    SELECT TRUNC(SYSDATE) INTO DATESYS FROM DUAL;
    IF nKey = TO_CHAR(DATESYS, 'DD.MM.YYYY') THEN
      nRes := nRes+1;
      if pKABID is null then
        UPDATE asu.TSMINI SET FC_VALUE = TO_CHAR(nRes) WHERE FC_SECTION='SET_NEW_FLU_NUM' AND FC_KEY = TO_CHAR(DATESYS, 'DD.MM.YYYY');
      else
        UPDATE asu.TSMINI SET FC_VALUE = TO_CHAR(nRes) WHERE FC_SECTION='SET_NEW_FLU_NUM'||TO_CHAR(pKABID) AND FC_KEY = TO_CHAR(DATESYS, 'DD.MM.YYYY');
      end if;
      COMMIT;
      RETURN nRes;
    ELSE --��������� �������� ���� ���� ��������� �� ��������� � ��������� ����� � ����������
      if pKABID is null then
        UPDATE asu.TSMINI SET FC_VALUE = TO_CHAR(1), FC_KEY = TO_CHAR(DATESYS, 'DD.MM.YYYY') WHERE FC_SECTION='SET_NEW_FLU_NUM';   
      else
        UPDATE asu.TSMINI SET FC_VALUE = TO_CHAR(1), FC_KEY = TO_CHAR(DATESYS, 'DD.MM.YYYY') WHERE FC_SECTION='SET_NEW_FLU_NUM'||TO_CHAR(pKABID);
      end if;
      COMMIT;
      RETURN 1;
    END IF;  
  END IF;    
END; --Created by X-Side 21.03.2008 Comments: �������� ��������� ���������� ������������ � ������� �����
/

SHOW ERRORS;


