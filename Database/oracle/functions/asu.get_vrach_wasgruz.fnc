DROP FUNCTION ASU.GET_VRACH_WASGRUZ
/

--
-- GET_VRACH_WASGRUZ  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TVRACH (Table)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_VRACH_WASGRUZ" (pFK_ID IN NUMBER) -- Created by TimurLan
 RETURN NUMBER
IS
 nTemp   NUMBER;
 CURSOR cTemp
  IS
    select /*+ rule*/count(tvrach.fk_id)
     from tvrach
    where tvrach.fk_vrachid = pFK_ID
      and tvrach.fl_vid = 'M'
      and tvrach.fk_pacid in (select TKARTA.FK_ID from TKARTA where TKARTA.FP_TEK_COC in (2,3) );
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO nTemp;
  CLOSE cTemp;
  RETURN nTemp;
END;
/

SHOW ERRORS;


