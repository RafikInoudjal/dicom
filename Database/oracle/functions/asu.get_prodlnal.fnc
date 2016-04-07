DROP FUNCTION ASU.GET_PRODLNAL
/

--
-- GET_PRODLNAL  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSROKY (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PRODLNAL" (pacid in number) -- Modified by TimurLan
RETURN NUMBER
 IS
  cursor c1 is
         select sum(fn_kol)
           from tsroky
          where fk_pryb/*fk_vyb*/=5
            and fk_pacid=pacid;
res number;
begin
  open c1;
  fetch c1 into res;
  if (res<0) or (res is null)then
    res:=0;
  end if;
  return res;
  return res;
end;
/

SHOW ERRORS;


