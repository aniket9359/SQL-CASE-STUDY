SQL> --write a query to retrive the name and email of all customers from the customer table
SQL> SELECT NAME,EMAIL FROM CUSTOMERS;

NAME                      EMAIL                                                                                                                                                                         
------------------------- -------------------------                                                                                                                                                     
AJAY                      ajay12@gmail.com                                                                                                                                                              
VIJAY                     vijay@gmail.com                                                                                                                                                               
SANJAY                    sanjay76@gmail.com                                                                                                                                                            
RAGHAV                    raghavsh21@gmail.com                                                                                                                                                          
MANISH                    manish55@gmail.com                                                                                                                                                            
DATTA                     datta@gmail.com                                                                                                                                                               
MEDHAVI                   medhavi@gmail.com                                                                                                                                                             
AWANTIKA                  awantika23@gmail.com                                                                                                                                                          
VIRAT                     VIRATMH@GMAIL.COM                                                                                                                                                             
VISHAKHA                  vishakha34@gmail.com                                                                                                                                                          

10 rows selected.

SQL> --WRITE A QUERY TO FETCH ACCOUNTID AND BALANCE FROM THE ACCOUNTS TABLE
SQL> 
SQL> SELECT ACCOUNTID,BALANCE FROM ACCOUNTS;

 ACCOUNTID    BALANCE                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       100       3200                                                                                                                                                                                   
       101    1600.87                                                                                                                                                                                   
       102       2100                                                                                                                                                                                   
       103       4780                                                                                                                                                                                   
       104     1000.9                                                                                                                                                                                   
       105      10000                                                                                                                                                                                   
       106       1200                                                                                                                                                                                   
       107       7865                                                                                                                                                                                   
       108       6700                                                                                                                                                                                   
       109       2300                                                                                                                                                                                   

10 rows selected.

SQL> --WRITE A QUERY TO RETRIEVE ALL COLUMNS FROM THE TRANSACTIONS TABLE
SQL> 
SQL> SELECT * FROM TRANSACTIONS;

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

SQL> --WRITE A QUERY TO FETCH THE CUSTOMERID,NAME AND EMAIL OF CUSTOMERS
SQL> 
SQL> SELECT CUSTOMERID,NAME,EMAIL FROM CUSTOMERS;

CUSTOMERID NAME                      EMAIL                                                                                                                                                              
---------- ------------------------- -------------------------                                                                                                                                          
         1 AJAY                      ajay12@gmail.com                                                                                                                                                   
         2 VIJAY                     vijay@gmail.com                                                                                                                                                    
         3 SANJAY                    sanjay76@gmail.com                                                                                                                                                 
         4 RAGHAV                    raghavsh21@gmail.com                                                                                                                                               
         5 MANISH                    manish55@gmail.com                                                                                                                                                 
         6 DATTA                     datta@gmail.com                                                                                                                                                    
         7 MEDHAVI                   medhavi@gmail.com                                                                                                                                                  
         8 AWANTIKA                  awantika23@gmail.com                                                                                                                                               
         9 VIRAT                     VIRATMH@GMAIL.COM                                                                                                                                                  
        10 VISHAKHA                  vishakha34@gmail.com                                                                                                                                               

10 rows selected.

SQL> --WRITE A QUERY TO RETRIVE ALL COLUMNS FROM THE CUSTOMER TABLE
SQL> 
SQL> SELECT * FROM CUSTOMERS;

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

SQL> --WRITE A QUERY TO RETRIVE ALL COLUMNS FROM TRANSACTIONS TABLE WHERE THE TRANSACTION ACCOUNT IS GRETAER THAN 500
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE
  3  AMOUNT>500;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          205        105 31-JAN-22       1100 WITHDRAW                                                                                                                                                  

SQL> --WRITE A QUERY TO FETCH ALL CUSTOMER RECORDS WTHOUT USING *
SQL> 
SQL> SELECT CUSTOMERID,NAME,EMAIL,PHONE,ADRRESS FROM CUSTOMERS;
SELECT CUSTOMERID,NAME,EMAIL,PHONE,ADRRESS FROM CUSTOMERS
                                   *
ERROR at line 1:
ORA-00904: "ADRRESS": invalid identifier 


SQL> SELECT CUSTOMERID,NAME,EMAIL,PHONE,ADDRESS FROM CUSTOMERS;

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

SQL> -- WRITE A QUERY TO RETRIVE ALL TRANSACTION DETAIL FOR A ACCOUNTID 101
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE
  3  ACCOUNTID=101;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  

SQL> --WRITE A QUERY TO RETRIVE THE DETAILS OF CUSTOMERS WHOSE NAME STARTS WITH 'J'
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE NAME LIKE 'J%';

no rows selected

SQL> --WRITE A QUERY TO FETCH CUSTOMERS WHO HAVE AN EMAIL ADDRESS THAT CONTAIN 'gmail.com'
SQL> 
SQL> select * from customers
  2  where email like '%gmail.com';

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
        10 VISHAKHA                  vishakha34@gmail.com      7689554676      DHAWADSHI ST                                                                                                             

9 rows selected.

SQL> -- WRITE A QUERY TO LIST ALL TRANSACTIONS FOR THE MONTH OF JANUARY 2020
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TDATE BETWEEN '01-JAN-2020' AND '21-DEC-2020';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  

6 rows selected.

SQL> --ANOTHER METHOD
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TDATE>='01-JAN-2020' AND TDATE<='31-DEC-2020';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          201        101 11-NOV-20        600 WITHDRAW                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          207        107 15-SEP-20        300 WITHDRAW                                                                                                                                                  

6 rows selected.

SQL> -- WRITE A QUERY TO FIND ALL ACCOUNTS WITH BALANCE LESS THAN 500
SQL> 
SQL> SELECT * FROM ACCOUNTS
  2  WHERE
  3  BALANCE<500;

no rows selected

SQL> --WRITE A QUERY TO RETRIVE CUSTOMERS WHOSE PHONE NUMBER CONTAINS '123'
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE PHONE LIKE'%123%';

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               

SQL> --WRITE A QUERY TO FIND ALL CUSTOMERS WHO HAVE AND ADDRESS STARTING WITH 'PUNE'
SQL> 
SQL> SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE 'PUNE%';

no rows selected

SQL> --WRITE A QUERY TO LIST ALL TRANSACTIONS FOR A SPECIFIC TRANSACTIONS DEPOSITE
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TRANSACTIONTYPE='DEPOSIT';

no rows selected

SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TRANSACTIONTYPE='DEPOSITE';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  

SQL> WRITE A QUERY THAT WILL RETURN ALL TRANSACTIONS WHOSE TRANSACTIONTYPE IS 'DEPOSITE' OR 'WITHDRAWAL'
SP2-0734: unknown command beginning "WRITE A QU..." - rest of line ignored.
SQL> --WRITE A QUERY THAT WILL RETURN ALL TRANSACTIONS WHOSE TRANSACTIONTYPE IS 'DEPOSITE' OR 'WITHDRAWAL'
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TRANSACTIONTYPE IN('DEPOSITE','WITHDRAWAL');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  

SQL> --ANOTHER METHOD
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE TRANSACTIONTYPE='DEPOSITE' OR  TRANSACTIONTYPE='WITHDRAWAL';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          200        100 01-JAN-20        200 DEPOSITE                                                                                                                                                  
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          203        103 23-AUG-20        900 DEPOSITE                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  
          208        108 11-APR-21        500 DEPOSITE                                                                                                                                                  

SQL> -- WRITE A QUERY THAT WILL CUSTOMERS WHOSE ACCOUNT TYPE IS EITHER SAVING OR CURRENT
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE
  3  CUSTOMERID IN (SELECT CUSTOMERID FROM ACCOUNTS WHERE ACCOUNTYPE IN('SAVING','CURRRENT');
CUSTOMERID IN (SELECT CUSTOMERID FROM ACCOUNTS WHERE ACCOUNTYPE IN('SAVING','CURRRENT')
                                                                                      *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> ED
Wrote file afiedt.buf

  1  SELECT * FROM CUSTOMERS
  2  WHERE
  3* CUSTOMERID IN (SELECT CUSTOMERID FROM ACCOUNTS WHERE ACCOUNTYPE IN('SAVING','CURRRENT'))
SQL> /
CUSTOMERID IN (SELECT CUSTOMERID FROM ACCOUNTS WHERE ACCOUNTYPE IN('SAVING','CURRRENT'))
                                                     *
ERROR at line 3:
ORA-00904: "ACCOUNTYPE": invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  SELECT * FROM CUSTOMERS
  2  WHERE
  3* CUSTOMERID IN (SELECT CUSTOMERID FROM ACCOUNTS WHERE ACCOUNTTYPE IN('SAVING','CURRRENT'))
SQL> /

CUSTOMERID NAME                      EMAIL                     PHONE           ADDRESS                                                                                                                  
---------- ------------------------- ------------------------- --------------- --------------------                                                                                                     
         1 AJAY                      ajay12@gmail.com          9234567890      12BARAMAT ST                                                                                                             
         4 RAGHAV                    raghavsh21@gmail.com      8958370754      PIMPARI PN32                                                                                                             
         5 MANISH                    manish55@gmail.com        7896507885      VARSOLI ALIBAG21                                                                                                         
         7 MEDHAVI                   medhavi@gmail.com         87589123654     BANER PU41                                                                                                               
         8 AWANTIKA                  awantika23@gmail.com      9787321976      BALEWADI PUNE12                                                                                                          

SQL> --WRITE A QUERY TO FETCH ALL THOSE TRANSACTIONS IN WHICH ACCOUNT ID IS EITHER 102 OR 104 OR 106
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE
  3  ACCOUNTID IN(102,104,106);

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  

SQL> --ANOTHER METHOD
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE
  3  ACCOUNTID=102 OR ACCOUNTID=104 OR ACCOUNTID=106;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
          202        102 01-SEP-20        300 DEPOSITE                                                                                                                                                  
          204        104 01-DEC-25        400 WITHDRAW                                                                                                                                                  
          206        106 01-JUN-20        200 DEPOSITE                                                                                                                                                  

SQL> --WRITE A QUERY TO RETRIVE ALL ACCOUNTS WHOSE BALANCE IS IN THE RANGE OF 1000 TO 5000
SQL> 
SQL> SELECT * FROM ACCOUNTS
  2  WHERE BALANCE BETWEEN 1000 AND 5000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       100          1 SAVING                     3200                                                                                                                                                   
       101          2 CURRENT                 1600.87                                                                                                                                                   
       102          3 CURRENT                    2100                                                                                                                                                   
       103          4 SAVING                     4780                                                                                                                                                   
       104          5 SAVING                   1000.9                                                                                                                                                   
       106          7 SAVING                     1200                                                                                                                                                   
       109         10 CURRENT                    2300                                                                                                                                                   

7 rows selected.

SQL> SELECT * FROM ACCOUNTS
  2  WHERE BALANCE>=1000 AND BALANCE<=5000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       100          1 SAVING                     3200                                                                                                                                                   
       101          2 CURRENT                 1600.87                                                                                                                                                   
       102          3 CURRENT                    2100                                                                                                                                                   
       103          4 SAVING                     4780                                                                                                                                                   
       104          5 SAVING                   1000.9                                                                                                                                                   
       106          7 SAVING                     1200                                                                                                                                                   
       109         10 CURRENT                    2300                                                                                                                                                   

7 rows selected.

SQL> --FIND ALL CUSTOMERS WHO DO NOT PROVIDE A PHONE NUMBER ,SUCH AS PHONE IS NULL
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE
  3  PHONE IS NULL;

no rows selected

SQL> --WRITE A QUERY TO RETURN ALL TRANSACTIONS WHERE THE AMOUNT IS NULL
SQL> 
SQL> SELECT * FROM TRANSACTIONS
  2  WHERE AMOUNT IS NULL;

no rows selected

SQL> --WRITE A QUERY TO FIND CUSTOMERS WHO HAVE  PROVIDE THEIR ADRRESS
SQL> 
SQL> SELECT * FROM CUSTOMERS
  2  WHERE
  3  ADDRESS IS NOT NULL;

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

SQL> --WRITE A QUERY TO RETRIVE BALANCE OF ACCOUNTS WHERE ACCOUNTID IS NOT NULL
SQL> SELECT BALANCE FROM ACCOUNTS
  2  WHERE ACCOUNTID IS NOT NULL;

   BALANCE                                                                                                                                                                                              
----------                                                                                                                                                                                              
      3200                                                                                                                                                                                              
   1600.87                                                                                                                                                                                              
      2100                                                                                                                                                                                              
      4780                                                                                                                                                                                              
    1000.9                                                                                                                                                                                              
     10000                                                                                                                                                                                              
      1200                                                                                                                                                                                              
      7865                                                                                                                                                                                              
      6700                                                                                                                                                                                              
      2300                                                                                                                                                                                              

10 rows selected.
