DROP TABLE ASU.HTTP_INSURANCE CASCADE CONSTRAINTS
/

--
-- HTTP_INSURANCE  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.HTTP_INSURANCE
(
  FC_FAM        VARCHAR2(4000 BYTE),
  FC_IM         VARCHAR2(4000 BYTE),
  FC_OTCH       VARCHAR2(4000 BYTE),
  FD_ROJD       DATE,
  FC_KOD_STRAH  VARCHAR2(4000 BYTE),
  FC_TYPESTRAH  VARCHAR2(4000 BYTE),
  FC_SER        VARCHAR2(4000 BYTE),
  FC_NUM        VARCHAR2(4000 BYTE),
  FD_BEGIN      DATE,
  FC_ENP        VARCHAR2(4000 BYTE),
  FD_END        DATE
)
ON COMMIT PRESERVE ROWS
NOCACHE
/


