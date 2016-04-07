DROP TABLE ASU.TMP_NAZAGES CASCADE CONSTRAINTS
/

--
-- TMP_NAZAGES  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TMP_NAZAGES
(
  FN_COUNT   NUMBER(9),
  FK_ROOMID  NUMBER(9),
  FK_OTDID   NUMBER(3),
  FD_INS     DATE,
  FN_AGE     NUMBER(9),
  FK_SMID    NUMBER(9)
)
ON COMMIT PRESERVE ROWS
NOCACHE
/


--
-- TMP_NAZAGES$FD_INS  (Index) 
--
--  Dependencies: 
--   TMP_NAZAGES (Table)
--
CREATE INDEX ASU.TMP_NAZAGES$FD_INS ON ASU.TMP_NAZAGES
(FD_INS)
/


--
-- TMP_NAZAGES$FN_AGE  (Index) 
--
--  Dependencies: 
--   TMP_NAZAGES (Table)
--
CREATE INDEX ASU.TMP_NAZAGES$FN_AGE ON ASU.TMP_NAZAGES
(FN_AGE)
/


--
-- TMP_NAZAGES$OTDID  (Index) 
--
--  Dependencies: 
--   TMP_NAZAGES (Table)
--
CREATE INDEX ASU.TMP_NAZAGES$OTDID ON ASU.TMP_NAZAGES
(FK_OTDID)
/


--
-- TMP_NAZAGES$ROOMID  (Index) 
--
--  Dependencies: 
--   TMP_NAZAGES (Table)
--
CREATE INDEX ASU.TMP_NAZAGES$ROOMID ON ASU.TMP_NAZAGES
(FK_ROOMID)
/


