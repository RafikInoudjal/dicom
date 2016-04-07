DROP FUNCTION ASU.TMP_GET_NUM
/

--
-- TMP_GET_NUM  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU."TMP_GET_NUM" (pFC_VALUE IN VARCHAR2) return VARCHAR2
 is
  Result VARCHAR2(32767);
  nTemp BINARY_INTEGER;
begin
  Result := pFC_VALUE;
  IF Result IS NULL THEN
    return Null;
  end if;
  nTemp:=INSTR(Result,'/');
  if nTemp <> 0 then
    Result := SUBSTR(Result,nTemp+1);
  end if;
/*  LOOP
    EXIT WHEN nTemp = 0;
    Result := Result || SUBSTR()
    EXIT WHEN INSTR (Result,'  ')=0;
    Result := REPLACE (Result,'  ',' ');
  END LOOP;*/
  return(Result);
end;
/

SHOW ERRORS;


