DROP FUNCTION ASU.GET_DBF_DBF_TO_ORACLE_VIS
/

--
-- GET_DBF_DBF_TO_ORACLE_VIS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_DBF_DBF_TO_ORACLE_VIS
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_DBF_DBF_TO_ORACLE_VIS
/

--
-- GET_DBF_DBF_TO_ORACLE_VIS  (Synonym) 
--
--  Dependencies: 
--   GET_DBF_DBF_TO_ORACLE_VIS (Function)
--
CREATE PUBLIC SYNONYM GET_DBF_DBF_TO_ORACLE_VIS FOR ASU.GET_DBF_DBF_TO_ORACLE_VIS
/


GRANT EXECUTE ON ASU.GET_DBF_DBF_TO_ORACLE_VIS TO PUBLIC
/

