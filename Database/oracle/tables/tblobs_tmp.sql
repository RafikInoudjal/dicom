DROP TABLE ASU.TBLOBS_TMP CASCADE CONSTRAINTS
/

--
-- TBLOBS_TMP  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TBLOBS_TMP
(
  FK_ID      NUMBER(15),
  FB_B       BLOB,
  FC_COMENT  VARCHAR2(300 BYTE)
)
ON COMMIT DELETE ROWS
NOCACHE
/


