DROP PROCEDURE ASU.DO_INSERT_PEOPLES_COMPANY
/

--
-- DO_INSERT_PEOPLES_COMPANY  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TPEOPLES (Table)
--   TPEOPLES_COMPANY (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_INSERT_PEOPLES_COMPANY" IS

  CURSOR cPeoples IS SELECT FK_ID, FK_COMPANYID FROM TPEOPLES WHERE FK_COMPANYID IS NOT NULL AND FK_COMPANYID <> -1;

BEGIN
  FOR c IN cPeoples LOOP
    INSERT INTO TPEOPLES_COMPANY(FK_PEOPLEID, FK_COMPANYID)
    VALUES(c.FK_ID, c.FK_COMPANYID);    
  END LOOP;

END; -- Procedure Created: Prihodko; Date: 28.04.2008; Comments: ���������. ��������� ������ � ������� TPEOPLES_COMPANY. ��� ������� �� ��������.
/

SHOW ERRORS;


