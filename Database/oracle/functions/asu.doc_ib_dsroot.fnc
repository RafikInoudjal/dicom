DROP FUNCTION ASU.DOC_IB_DSROOT
/

--
-- DOC_IB_DSROOT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.DOC_IB_DSROOT
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 421;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM DOC_IB_DSROOT
/

--
-- DOC_IB_DSROOT  (Synonym) 
--
--  Dependencies: 
--   DOC_IB_DSROOT (Function)
--
CREATE PUBLIC SYNONYM DOC_IB_DSROOT FOR ASU.DOC_IB_DSROOT
/


GRANT EXECUTE ON ASU.DOC_IB_DSROOT TO PUBLIC
/

