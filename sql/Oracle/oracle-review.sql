change the data view for session
ALTER SESSION SET nls_date_format = 'dd.mm.yyyy hh24:mi:ss';


Date from Server
SELECT CURRENT_DATE from dual;
SELECT SYSDATE FROM dual;


Working with date.
use trunc
SELECT * FROM BANK_ACH_STAGING where trunc(date_created) = to_date('05/10/2016','DD/MM/RRRR')

Last 30 rows
select * from (select * from VERITEC_DATA_LOG order by DATE_CREATED desc) where ROWNUM < 30;

Las 60 days of the field
select * from ST_CC_MASTER where TRUNC (DATE_UPDATED) = TO_DATE('03/22/2016','MM/DD/YYYY') - 60

