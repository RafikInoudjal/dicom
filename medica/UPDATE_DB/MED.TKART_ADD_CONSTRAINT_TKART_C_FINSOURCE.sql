ALTER TABLE MED.TKART ADD CONSTRAINT TKART_C_FINSOURCE
  FOREIGN KEY (FK_FINSOURCE_ID)
 REFERENCES MED.TFINSOURCE (FK_ID) 
/
