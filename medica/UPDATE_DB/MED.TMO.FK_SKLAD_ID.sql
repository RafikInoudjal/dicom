ALTER TABLE MED.TMO ADD (FK_SKLAD_ID NUMBER)
/
COMMENT ON COLUMN MED.TMO.FK_SKLAD_ID IS '����� (med.tsklad.fk_id)'
/

ALTER TABLE MED.TMO ADD CONSTRAINT C_TMO_FK_SKLAD_ID
  FOREIGN KEY (
FK_SKLAD_ID
)
 REFERENCES MED.TSKLAD
 (
FK_ID
) 
 ON DELETE CASCADE 
/

CREATE INDEX MED.TMO_FK_SKLAD_ID ON MED.TMO
   (  FK_SKLAD_ID ASC  ) 
 COMPUTE STATISTICS 
/
