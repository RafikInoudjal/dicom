DROP TABLE ASU.TTMP_SVOD_OTCHET_OTDEL CASCADE CONSTRAINTS
/

--
-- TTMP_SVOD_OTCHET_OTDEL  (Table) 
--
CREATE GLOBAL TEMPORARY TABLE ASU.TTMP_SVOD_OTCHET_OTDEL
(
  CODE        VARCHAR2(15 BYTE)                 NOT NULL,
  FC_OTDEL    VARCHAR2(255 BYTE),
  FK_OTDEL    NUMBER                            NOT NULL,
  FC_HEAL     VARCHAR2(500 BYTE)                NOT NULL,
  FK_HEAL     NUMBER,
  FK_PACID    NUMBER(15),
  NAZID       NUMBER(15)                        NOT NULL,
  FN_COUNT    NUMBER,
  FN_COST     NUMBER,
  FN_SUM      NUMBER,
  FK_ISPOLID  NUMBER(15)
)
ON COMMIT DELETE ROWS
NOCACHE
/


