DROP FUNCTION ASU.GET_REGISTSPEC
/

--
-- GET_REGISTSPEC  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_REGISTSPEC" 
return number
is
begin
  return 953;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_REGISTSPEC TO PUBLIC
/

