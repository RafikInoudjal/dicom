DROP FUNCTION ASU.GET_KDNV_PRIZN_SHORT
/

--
-- GET_KDNV_PRIZN_SHORT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TSROKY (Table)
--   PKG_SMINI (Package)
--   GET_PACDAYSPLAN (Function)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_KDNV_PRIZN_SHORT" (pFD_DATAC IN DATE,pFK_PRIZN IN NUMBER)
  RETURN NUMBER
  IS
  Cursor c IS select/*+ first_row */count(*) as fn_count
                    from
                    (select fk_ibid, fc_fam  from tsroky , TKARTA
                    where
                                  fd_data1<=pFD_DATAC
                                  and fd_data3>=pFD_DATAC
                                  and fk_pryb<>1
                                  and fk_pryb<>3
                                  and fk_pryb<>7
                    AND TKARTA.FK_ID=FK_PACID AND TKARTA.FP_TEK_COC=3  and tkarta.fk_prizn=pfk_prizn AND GET_PACDAYSPLAN(TKARTA.FK_ID)<=PKG_SMINI.READSTRING('CONFIG','SHORT_SROK','5')
                    union
                    select /*+ rule */ fk_ibid, fc_fam  from tsroky , TKARTA
                    where
                                  fd_data1=pFD_DATAC
                                  and fd_data3>=pFD_DATAC
                                  and (fk_pryb=5 or fk_pryb=6) AND GET_PACDAYSPLAN(TKARTA.FK_ID)<=PKG_SMINI.READSTRING('CONFIG','SHORT_SROK','5')
                    AND TKARTA.FK_ID=FK_PACID AND TKARTA.FP_TEK_COC=3  and tkarta.fk_prizn=pfk_prizn );
   i NUMBER;
   BEGIN
     OPEN c;
     FETCH c INTO i;
     CLOSE c;
     RETURN i;
   END;
/

SHOW ERRORS;


