DROP FUNCTION ASU.GET_MEDSES_REGISTID
/

--
-- GET_MEDSES_REGISTID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_MEDSES_REGISTID" 
return number
is
begin
  return 201;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_MEDSES_REGISTID TO PUBLIC
/

