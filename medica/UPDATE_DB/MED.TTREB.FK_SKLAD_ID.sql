ALTER TABLE MED.TTREB ADD (FK_SKLAD_ID NUMBER)
/
COMMENT ON COLUMN MED.TTREB.FK_SKLAD_ID IS '????? (med.tsklad.fk_id)'
/

ALTER TABLE MED.TTREB ADD CONSTRAINT C_TTREB_FK_SKLAD_ID
  FOREIGN KEY (
FK_SKLAD_ID
)
 REFERENCES MED.TSKLAD
 (
FK_ID
) 
 ON DELETE CASCADE 
/

CREATE INDEX MED.TTREB_FK_SKLAD_ID ON MED.TTREB
   (  FK_SKLAD_ID ASC  ) 
 COMPUTE STATISTICS 
/

quit
/
