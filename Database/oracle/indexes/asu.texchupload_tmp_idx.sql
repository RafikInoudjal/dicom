DROP INDEX ASU.TEXCHUPLOAD_TMP_IDX
/

--
-- TEXCHUPLOAD_TMP_IDX  (Index) 
--
CREATE INDEX ASU.TEXCHUPLOAD_TMP_IDX ON ASU.TEXCHUPLOAD_TMP
(FK_INSURDOCID, FK_PACID, FK_ADRID, FK_TALONID)
/


