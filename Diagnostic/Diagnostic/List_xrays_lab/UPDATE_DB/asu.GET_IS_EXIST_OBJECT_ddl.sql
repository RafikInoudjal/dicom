CREATE FUNCTION ASU.GET_IS_EXIST_OBJECT(pOBJECT_NAME VARCHAR2, pOBJECT_TYPE VARCHAR2 DEFAULT 'FUNCTION', pOwner VARCHAR2 DEFAULT 'ASU')
RETURN NUMBER
       IS
vRet NUMBER;
BEGIN
  vRet := 0;

  Select COUNT(*) INTO vRet from All_Procedures where OWNER = UPPER(pOwner) and OBJECT_TYPE=UPPER(pOBJECT_TYPE) and OBJECT_NAME = upper(pOBJECT_NAME);

  Return vRet;
END;
/
