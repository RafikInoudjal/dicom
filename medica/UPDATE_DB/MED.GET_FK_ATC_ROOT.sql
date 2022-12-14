CREATE OR REPLACE FUNCTION MED.GET_FK_ATC_ROOT
  ( pFK_ID IN NUMBER)
  RETURN  NUMBER IS
  Temp NUMBER;
BEGIN
  SELECT max(ID) INTO Temp
  FROM rls.clsatc
  WHERE ID IN (SELECT ID FROM rls.clsatc WHERE parentid = 0 AND ID <> 0) START WITH ID = pFK_ID CONNECT BY id = PRIOR parentid AND ID <> 0;

  RETURN Temp;
END;