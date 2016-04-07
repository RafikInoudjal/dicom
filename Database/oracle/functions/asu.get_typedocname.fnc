DROP FUNCTION ASU.GET_TYPEDOCNAME
/

--
-- GET_TYPEDOCNAME  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TTYPEDOC (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_TYPEDOCNAME" (pFK_ID IN NUMBER) RETURN  VARCHAR2 IS
BEGIN 
    FOR C IN (SELECT FC_NAME FROM ASU.TTYPEDOC WHERE FK_ID = pFK_ID) LOOP
        RETURN c.FC_NAME;
    END LOOP;
    RETURN '';
END;
/

SHOW ERRORS;


