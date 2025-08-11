SQL> --Retrieve all transactions where the amount is gretaer than 1000
SQL> 
SQL> select * from transactions
  2  where amount>1000;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  

SQL> --List all transactions sorted by date in decendind order
SQL> 
SQL> select * from transactions
  2  order by tdate desc;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          209        109 21-MAR-21        300 WITHDRAW                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  

10 rows selected.

SQL> --Retrive all deposits and sort them by amount in descending order
SQL> select * from transactions where transactiontype='Deposite'
  2  order by amount desc;

no rows selected

SQL> select * from transactions where transactiontype='DEPOSITE'
  2  order by amount desc;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  

SQL> --RETRIVE THE 5 MOST RECENT RANSACTIONS
SQL> 
SQL> SELECT * FROM
  2  (SELECT * FROM TRANSACTIONS ORDER BY TDATE DESC)
  3  WHERE ROWNUM<=5;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          209        109 21-MAR-21        300 WITHDRAW                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  

SQL> --SORT TRANSACTIONS FIRST BY TRANSACTION TYPE AND THEN AMOUNT WITHIN EACH TYPE.
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  ORDER BY TRANSACTIONTYPE,AMOUNT;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          209        109 21-MAR-21        300 WITHDRAW                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  

10 rows selected.

SQL> --RETRIVE TRANSACTIONS GREATER THAN 1000 EITHER DEPOSITE OR WITHDRAWALS
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE AMOUNT>100 AND TRANSACTIONTYPE IN('DEPOSITE','WITHDRAW');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          209        109 21-MAR-21        300 WITHDRAW                                                                                                                                                  

10 rows selected.

SQL> --ANOTHER METHOD
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE AMOUNT>100 AND (TRANSACTIONTYPE='DEPOSITE' OR TRANSACTIONTYPE='WITHDRAW');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          209        109 21-MAR-21        300 WITHDRAW                                                                                                                                                  

10 rows selected.

SQL> --RETRIVE TRANSACTIONS THAT OCCURED WITHIN THE FIRST HALF OF 2020
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TDATE BETWEEN TO_DATE('01-01-2020','DD-MM-YYYY') AND TO_DATE('30-06-2020','DD-MM-YYYY');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  

SQL> --ANOTHER METHOD
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TDATE>=TO_DATE('01-01-2020','DD-MM-YYYY') AND TDATE<=TO_DATE('30-06-2020','DD-MM-YYYY');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  

SQL> --LIST OF ALL CUSTOMERS WHO HAVE AN ADDRESS LISTED
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE ADDRESS IS NOT NULL;

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         2 VIJAY                     vijay@gmail.com           8745328756      NAGPUR34 BH                                                                                                              
         3 SANJAY                    sanjay76@gmail.com        7888453945      SWARGET34 PUNE                                                                                                           
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         
         6 DATTA                     datta@gmail.com           7767943590      DADAR MUM23                                                                                                              
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          
         9 VIRAT                     VIRATMH@GMAIL.COM         8845231167      SATARA ST45                                                                                                              
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             

10 rows selected.

SQL> --SORT CUSTOMERS BY ADDRESS IN ACSENDING ORDER PLACING NULL VALUES LAST
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  ORDER BY ADDRESS ASC NULLS LAST;

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               
         6 DATTA                     datta@gmail.com           7767943590      DADAR MUM23                                                                                                              
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             
         2 VIJAY                     vijay@gmail.com           8745328756      NAGPUR34 BH                                                                                                              
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         9 VIRAT                     VIRATMH@GMAIL.COM         8845231167      SATARA ST45                                                                                                              
         3 SANJAY                    sanjay76@gmail.com        7888453945      SWARGET34 PUNE                                                                                                           
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         

10 rows selected.

SQL> --SORT CUSTOMERS BY ADDRESS IN ASCENDING ORDER PLACING NULL VALUES FIRST
SQL> SELECT * FROM CUSTOMERS
  2  ORDER BY ADDRESS ASC NULLS FIRST;

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               
         6 DATTA                     datta@gmail.com           7767943590      DADAR MUM23                                                                                                              
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             
         2 VIJAY                     vijay@gmail.com           8745328756      NAGPUR34 BH                                                                                                              
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         9 VIRAT                     VIRATMH@GMAIL.COM         8845231167      SATARA ST45                                                                                                              
         3 SANJAY                    sanjay76@gmail.com        7888453945      SWARGET34 PUNE                                                                                                           
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         

10 rows selected.

SQL> --RETRIVE ALL CUSTOMERS WHOSE NAME STARTS WITH 'J'
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE NAME LIKE 'J%';

no rows selected

SQL> --PERFORM A CASE-INSENSITIVE SERCH FOR CUSTOMERS WHOSE NAMES START WITH 'j'
SQL> SELECT * FROM CUSTOMERS
  2  WHERE LOWER(NAME) LIKE 'j%';

no rows selected

SQL> --RETRIVE ALL CUSTOMERS WHOSE NAMES DO NOT END WITH 'SMITH'
SQL> SELECT * FROM CUSTOMERS
  2  WHERE UPPER(NAME) NOT LIKE '%SMITH';

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         2 VIJAY                     vijay@gmail.com           8745328756      NAGPUR34 BH                                                                                                              
         3 SANJAY                    sanjay76@gmail.com        7888453945      SWARGET34 PUNE                                                                                                           
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         
         6 DATTA                     datta@gmail.com           7767943590      DADAR MUM23                                                                                                              
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          
         9 VIRAT                     VIRATMH@GMAIL.COM         8845231167      SATARA ST45                                                                                                              
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             

10 rows selected.

SQL> --RETRIVE DEPOSITES OVER 1000 OR WITHDRWALS OVER 500
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE (TRANSACTIONTYPE='DEPOSITE' AND AMOUNT>1000) OR
  3  (TRANSACTIONTYPE='WITHDRAW' AND AMOUNT>500);

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  

SQL> --RETRIVE TRANSACTION THAT ARE NOT DEPOSITES OR WITHDRWALS
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TRANSACTIONTYPE NOT IN('DEPOSITE','WITHDRAW');

no rows selected

SQL> --SORT TRANSACTION BY A CALCULATED COLUMN
SQL> SELECT *,AMOUNT*1.05 AS BONUS FROM TRANSACTIONS ORDER BY BONUS DESC;
SELECT *,AMOUNT*1.05 AS BONUS FROM TRANSACTIONS ORDER BY BONUS DESC
        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT NAME,AMOUNT,AMOUNT*1.05 AS BONUS FROM TRANSACTIONS ORDER BY BONUS DESC;
SELECT NAME,AMOUNT,AMOUNT*1.05 AS BONUS FROM TRANSACTIONS ORDER BY BONUS DESC
       *
ERROR at line 1:
ORA-00904: "NAME": invalid identifier 


SQL> SELECT ACCOUNTID,AMOUNT,AMOUNT*1.05 AS BONUS FROM TRANSACTIONS ORDER BY BONUS DESC;

 ACCOUNTID     AMOUNT      BONUS                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
       105       1100       1155                                                                                                                                                                        
       103        900        945                                                                                                                                                                        
       101        600        630                                                                                                                                                                        
       108        500        525                                                                                                                                                                        
       104        400        420                                                                                                                                                                        
       102        300        315                                                                                                                                                                        
       107        300        315                                                                                                                                                                        
       109        300        315                                                                                                                                                                        
       106        200        210                                                                                                                                                                        
       100        200        210                                                                                                                                                                        

10 rows selected.

SQL> --RETRIVE CUSTOMERS WHOSE NAMES CONTAIN THE LETTER 'a'
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE LOWER(NAME) LIKE '%a%';

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         2 VIJAY                     vijay@gmail.com           8745328756      NAGPUR34 BH                                                                                                              
         3 SANJAY                    sanjay76@gmail.com        7888453945      SWARGET34 PUNE                                                                                                           
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         
         6 DATTA                     datta@gmail.com           7767943590      DADAR MUM23                                                                                                              
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          
         9 VIRAT                     VIRATMH@GMAIL.COM         8845231167      SATARA ST45                                                                                                              
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             

10 rows selected.

SQL> --RETRIVE THE TOTAL NUMBER OF TRANSACTIONS AND SORT BY THE HIGHEST AMOUNT
SQL> 
SQL> SELECT TRANSACTIONTYPE,COUNT(*) AS TOTAL_TRANSACTION FROM TRANSACTIONS
  2  GROUP BY TRANSACTIONTYPE ORDER BY COUNT(*) DESC;

TRANSACTIONTYPE      TOTAL_TRANSACTION                                                                                                                                                                  
-------------------- -----------------                                                                                                                                                                  
WITHDRAW                             5                                                                                                                                                                  
DEPOSITE                             5                                                                                                                                                                  

SQL> --RETRIVE CUSTOMERS WHOSE NAMES DO NOT CONTAIN THE LETTER 'E'
SQL> SELECT * FROM CUSTOMERS
  2  WHERE NAME NOT LIKE '%E%';

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         2 VIJAY                     vijay@gmail.com           8745328756      NAGPUR34 BH                                                                                                              
         3 SANJAY                    sanjay76@gmail.com        7888453945      SWARGET34 PUNE                                                                                                           
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         
         6 DATTA                     datta@gmail.com           7767943590      DADAR MUM23                                                                                                              
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          
         9 VIRAT                     VIRATMH@GMAIL.COM         8845231167      SATARA ST45                                                                                                              
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             

9 rows selected.

SQL> --RETRIVE ALL CUSTOMERS WITH A BALANCE GRETER THAN OR EQUAL TO 500 AND ORDER THEM BY BALANCE IN DESCENDING ORDER
SQL> SELECT * FROM ACCOUNTS
  2  WHERE BALANCE>=500
  3  ORDER BY BALANCE DESC;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       105          6 CURRENT                   10000                                                                                                                                                   
       107          8 SAVING                     7865                                                                                                                                                   
       108          9 CURRENT                    6700                                                                                                                                                   
       103          4 SAVING                     4780                                                                                                                                                   
       100          1 SAVING                     3200                                                                                                                                                   
       109         10 CURRENT                    2300                                                                                                                                                   
       102          3 CURRENT                    2100                                                                                                                                                   
       101          2 CURRENT                 1600.87                                                                                                                                                   
       106          7 SAVING                     1200                                                                                                                                                   
       104          5 SAVING                   1000.9                                                                                                                                                   

10 rows selected.

SQL> --RETRIVE TRANSACTIONS WITH AN AMOUNT BETWEEN 100 AND 1000 AND SORT THEM BY DATE
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE AMOUNT BETWEEN 100 AND 1000 ORDER BY TDATE;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          209        109 21-MAR-21        300 WITHDRAW                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  

9 rows selected.

SQL> --RERIVE ALL CUSTOMERS WHOSE NAMES START WITH THE LETTER 'A' AND ORDER THEM BY NAME
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE NAME LIKE 'A%' ORDER BY NAME;

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          

SQL> SPOOL ON
