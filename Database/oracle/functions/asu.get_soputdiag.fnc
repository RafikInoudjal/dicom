DROP FUNCTION ASU.GET_SOPUTDIAG
/

--
-- GET_SOPUTDIAG  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_SOPUTDIAG" 
return number
is 
begin
  return 319035;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_SOPUTDIAG TO PUBLIC
/

