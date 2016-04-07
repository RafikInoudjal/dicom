DROP INDEX ASU.TKABINET_ID_NAME
/

--
-- TKABINET_ID_NAME  (Index) 
--
CREATE INDEX ASU.TKABINET_ID_NAME ON ASU.TKABINET
(FK_ID, FC_NAME)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


