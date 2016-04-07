DROP TABLE ASU.TRESMEDRECEPTVID_TMP CASCADE CONSTRAINTS
/

--
-- TRESMEDRECEPTVID_TMP  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TRESMEDRECEPTVID_TMP
(
  FK_ID     NUMBER(9)                           NOT NULL,
  FC_NAME   VARCHAR2(50 BYTE),
  FL_NEED   NUMBER(1),
  FN_ORDER  NUMBER(1)
)
ON COMMIT PRESERVE ROWS
NOCACHE
/


