DROP FUNCTION ASU.GET_SPEC_FELDZP
/

--
-- GET_SPEC_FELDZP  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_SPEC_FELDZP" 
return number
is
begin
  return 1075;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_SPEC_FELDZP TO PUBLIC
/

