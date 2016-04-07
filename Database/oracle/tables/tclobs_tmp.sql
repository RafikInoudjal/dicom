DROP TABLE ASU.TCLOBS_TMP CASCADE CONSTRAINTS
/

--
-- TCLOBS_TMP  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TCLOBS_TMP
(
  FK_ID       NUMBER(9),
  FC_CLOB     CLOB,
  FC_COMMENT  VARCHAR2(200 BYTE)
)
ON COMMIT DELETE ROWS
NOCACHE
/


GRANT DELETE, INDEX, INSERT, REFERENCES, SELECT, UPDATE ON ASU.TCLOBS_TMP TO STAT
/

