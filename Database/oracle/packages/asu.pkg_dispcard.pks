DROP PACKAGE ASU.PKG_DISPCARD
/

--
-- PKG_DISPCARD  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_DISPCARD" IS
  /*Nakorjakov A. 28 Apr 2007*/
  FUNCTION GetDopDispFilterOwnerId return number;
  FUNCTION GET_PAC_DOLG(pFK_PACID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_WORKPLACE(pFK_PACID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_DIAG(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_DIAG_ID(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_UCH(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_DISP_STATE(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION IS_OSMOTREN_TODAY(pDISPCARDID IN NUMBER) RETURN NUMBER;
  FUNCTION IS_OSMOTREN_TODAY_CHAR(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION IS_GOSPITAL(pDISPCARDID IN NUMBER, pS IN DATE, pPO DATE)
    RETURN NUMBER;
  FUNCTION IS_GOSPITAL_CHAR(pDISPCARDID IN NUMBER, pS IN DATE, pPO DATE)
    RETURN VARCHAR2;
  FUNCTION IS_HAS_LIST(pDISPCARDID IN NUMBER, pS IN DATE, pPO DATE)
    RETURN NUMBER;
  FUNCTION IS_HAS_LIST_CHAR(pDISPCARDID IN NUMBER, pS IN DATE, pPO DATE)
    RETURN VARCHAR2;
  FUNCTION GET_PAC_LAST_VIP_CONS(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_SOC_STATUS(pAMBID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_CARD_STATUS(pDISPCARDID IN NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_CUR_SOST(pAMBID NUMBER) RETURN VARCHAR2;
  FUNCTION GET_PAC_REGION(pAMBID IN BINARY_INTEGER) RETURN VARCHAR2;
  FUNCTION GET_OSMOTR_COUNT(pDIAG IN NUMBER, pS IN DATE, pPO DATE)
    RETURN NUMBER;
  FUNCTION GET_MINDATEFROMDISPCARD(pFK_SMID in number, pFK_PACID in number, pFK_DISPKARDID in number)
    RETURN DATE;
  /*Marriage 03.07.2008-08.10.2008*/
  FUNCTION GET_DAYID RETURN NUMBER;
  FUNCTION GET_WEEKID RETURN NUMBER;
  FUNCTION GET_MONTHID RETURN NUMBER;
  FUNCTION GET_YEARID RETURN NUMBER;
  FUNCTION GET_DAYCOUNTBYSROK(FN_COUNT in number, FK_SROKID in number)
    RETURN NUMBER;
  FUNCTION GET_INPREIOD(FN_COUNT        in number,
                        FK_SROKID       in number,
                        pFK_PACID       in number,
                        pFK_SMID        in number,
                        pDate           in date,
                        pFK_DISPGROUPID in number) RETURN DATE;
  FUNCTION DECODEPERIODSTR(FN_COUNT in NUMBER, FC_KRAT in VARCHAR2)
    RETURN varchar2;
  function GET_NAZCOUNT(Krat       in number,
                        srok       in number,
                        PERIODKRAT in number,
                        PERIODSROK in number) return number;
  FUNCTION GET_INPREIODSETNAZ(FN_COUNT        in number,
                              FK_SROKID       in number,
                              pFK_PACID       in number,
                              pFK_SMID        in number,
                              pDate           in date,
                              pFK_DISPGROUPID in number) RETURN NUMBER;
  FUNCTION IS_pac_has_dispcard(pFK_AMBID       in number,
                               pFK_DISPGROUPID in number) RETURN NUMBER;
  FUNCTION DispcardList(pFK_AMBID in number) RETURN VARCHAR2;
  FUNCTION GetFrmSprCaption(pSynonim in varchar2) RETURN VARCHAR2;

END; -- Package spec
/

SHOW ERRORS;


