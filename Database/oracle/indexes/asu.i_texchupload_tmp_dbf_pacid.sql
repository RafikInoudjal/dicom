DROP INDEX ASU.I_TEXCHUPLOAD_TMP_DBF_PACID
/

--
-- I_TEXCHUPLOAD_TMP_DBF_PACID  (Index) 
--
CREATE INDEX ASU.I_TEXCHUPLOAD_TMP_DBF_PACID ON ASU.TEXCHUPLOAD_TMP_DBF
(DECODE("FP_POLY",1,"FK_TALONID","FK_PACID"))
/


