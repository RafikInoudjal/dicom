DROP FUNCTION ASU.GET_PROCMANID
/

--
-- GET_PROCMANID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_PROCMANID" 
return number
is 
begin
  return 324173;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_PROCMANID TO PUBLIC
/

