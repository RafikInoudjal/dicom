DROP TABLE ASU.TMISEXCH_TASKS_USERS CASCADE CONSTRAINTS
/

--
-- TMISEXCH_TASKS_USERS  (Table) 
--
CREATE TABLE ASU.TMISEXCH_TASKS_USERS
(
  FK_TASKID  NUMBER(10),
  FK_USERID  NUMBER(15)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TMISEXCH_TASKS_USERS IS '���������� ���������� � ������ ������
���������� �.�. 17.05.2007'
/

COMMENT ON COLUMN ASU.TMISEXCH_TASKS_USERS.FK_TASKID IS 'tmisexch_tasks.fk_id'
/

COMMENT ON COLUMN ASU.TMISEXCH_TASKS_USERS.FK_USERID IS 'tsotr.fk_id'
/


GRANT SELECT ON ASU.TMISEXCH_TASKS_USERS TO LOGIN
/

