DROP FUNCTION ASU.GET_PERSON_LECH
/

--
-- GET_PERSON_LECH  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."GET_PERSON_LECH" 
return number
is 
begin
  return 257054;
end;
/

SHOW ERRORS;


GRANT EXECUTE ON ASU.GET_PERSON_LECH TO PUBLIC
/

