/******************************************************************************/
/***               Generated by IBExpert 11.11.2014 16:30:24                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_MN_WORKLIST_ID;

CREATE TABLE MN_WORKLIST (
    P_ENAME          CHAR(255),
    P_SEX            CHAR(4),
    P_PID            CHAR(20) NOT NULL,
    P_DATEBORN       TIMESTAMP,
    P_FAM            CHAR(255),
    P_IM             CHAR(255),
    P_OTCH           CHAR(255),
    P_ENAME_RUS      CHAR(255),
    ACCESSIONNUMBER  CHAR(100),
    MODALITY         CHAR(5),
    P_AETITLE        CHAR(15) NOT NULL,
    STUDYUID         CHAR(80),
    P_ST_DT          TIMESTAMP,
    STATUS           SMALLINT,
    FK_ID            INTEGER NOT NULL
);




/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/

ALTER TABLE MN_WORKLIST ADD PRIMARY KEY (FK_ID);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/


SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: WORKLIST_BI0 */
CREATE OR ALTER TRIGGER MN_WORKLIST_BI0 FOR MN_WORKLIST
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.fk_id is null) then
  begin
    new.fk_id = gen_id(GEN_MN_WORKLIST_ID, 1);
  end
end
^


SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/


/* Privileges of roles */
GRANT ALL ON MN_WORKLIST TO ROLE_USER;
