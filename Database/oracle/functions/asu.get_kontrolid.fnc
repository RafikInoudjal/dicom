DROP FUNCTION ASU.GET_KONTROLID
/

--
-- GET_KONTROLID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_KONTROLID" 
return number
is 
begin
  return 342371;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_KONTROLID TO PUBLIC
/

