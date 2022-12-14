DROP TABLE ASU.TSMID_TEMP_NAZ CASCADE CONSTRAINTS
/

--
-- TSMID_TEMP_NAZ  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TSMID_TEMP_NAZ
(
  FK_ID         NUMBER                          NOT NULL,
  FK_SMID       NUMBER,
  FK_SMIDNAZID  NUMBER,
  FK_NAZID      NUMBER,
  FN_ORDER      NUMBER,
  FK_OWNER      NUMBER
)
ON COMMIT PRESERVE ROWS
NOCACHE
/


