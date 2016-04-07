DROP FUNCTION ASU.GET_OSLOGDIAG
/

--
-- GET_OSLOGDIAG  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_OSLOGDIAG" 
return number
is 
begin
  return 319034;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_OSLOGDIAG TO PUBLIC
/
