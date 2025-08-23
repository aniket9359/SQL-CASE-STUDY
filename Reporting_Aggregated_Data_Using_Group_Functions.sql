SQL> select * from Accounts;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       100          1 SAVING                     3200                                                                                                                                                   
       101          2 CURRENT                 1600.87                                                                                                                                                   
       102          3 CURRENT                    2100                                                                                                                                                   
       103          4 SAVING                     4780                                                                                                                                                   
       104          5 SAVING                   1000.9                                                                                                                                                   
       105          6 CURRENT                   10000                                                                                                                                                   
       106          7 SAVING                     1200                                                                                                                                                   
       107          8 SAVING                     7865                                                                                                                                                   
       108          9 CURRENT                    6700                                                                                                                                                   
       109         10 CURRENT                    2300                                                                                                                                                   

10 rows selected.

SQL> select * from Transactions;

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

SQL> select * from customers;

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

SQL> --Retrieve the total number of accounts for each customer
SQL> select customerid,count(accountid) from accounts group by customerid;

CUSTOMERID COUNT(ACCOUNTID)                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
         1                1                                                                                                                                                                             
         6                1                                                                                                                                                                             
         2                1                                                                                                                                                                             
         4                1                                                                                                                                                                             
         5                1                                                                                                                                                                             
         8                1                                                                                                                                                                             
         3                1                                                                                                                                                                             
         7                1                                                                                                                                                                             
         9                1                                                                                                                                                                             
        10                1                                                                                                                                                                             

10 rows selected.

SQL> --Write a query to find the total balance for each account type
SQL> 
SQL> select accounttype,sum(balance) from accounts
  2  group by accounttype;

ACCOUNTTYPE          SUM(BALANCE)                                                                                                                                                                       
-------------------- ------------                                                                                                                                                                       
SAVING                    18045.9                                                                                                                                                                       
CURRENT                  22700.87                                                                                                                                                                       

SQL> --How would you calculate the average balance accross all accounts
SQL> 
SQL> select avg(balance) as average_balance from accounts;

AVERAGE_BALANCE                                                                                                                                                                                         
---------------                                                                                                                                                                                         
       4074.677                                                                                                                                                                                         

SQL> --Find customer_id those have more than on account
SQL> 

SQL> select customerid,count(accountid) as num_of_accounts from accounts group by customerid having count(accountid)>1;

no rows selected

SQL> ---Determine the total amount of all transactions for each account
SQL> 
SQL> select accountid,sum(amount) from transactions
  2  group by accountid;

 ACCOUNTID SUM(AMOUNT)                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
       100         200                                                                                                                                                                                  
       108         500                                                                                                                                                                                  
       102         300                                                                                                                                                                                  
       101         600                                                                                                                                                                                  
       107         300                                                                                                                                                                                  
       104         400                                                                                                                                                                                  
       105        1100                                                                                                                                                                                  
       109         300                                                                                                                                                                                  
       103         900                                                                                                                                                                                  
       106         200                                                                                                                                                                                  

10 rows selected.

SQL> select accountid,avg(amount) as average_amount from transactions
  2  group by accountid;

 ACCOUNTID AVERAGE_AMOUNT                                                                                                                                                                               
---------- --------------                                                                                                                                                                               
       100            200                                                                                                                                                                               
       108            500                                                                                                                                                                               
       102            300                                                                                                                                                                               
       101            600                                                                                                                                                                               
       107            300                                                                                                                                                                               
       104            400                                                                                                                                                                               
       105           1100                                                                                                                                                                               
       109            300                                                                                                                                                                               
       103            900                                                                                                                                                                               
       106            200                                                                                                                                                                               

10 rows selected.

SQL> --List the number of deposits made by each customer
SQL> 
SQL> select accountid,transactiontype,count(*)SELECT AccountID, COUNT(TransactionID) AS NumDeposits from transactions group by account_id,transactiontype
  2  FROM Transactions
  3  WHERE TransactionType = 'Deposit'
  4  GROUP BY AccountID;
select accountid,transactiontype,count(*)SELECT AccountID, COUNT(TransactionID) AS NumDeposits from transactions group by account_id,transactiontype
                                         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select accountid,transactiontype,count(*)SELECT AccountID, COUNT(TransactionID) AS NumDeposits from transactions group by accountid,transactiontype
  2  FROM Transactions
  3  WHERE TransactionType = 'DEPOSITE'
  4* GROUP BY AccountID
SQL> /
select accountid,transactiontype,count(*)SELECT AccountID, COUNT(TransactionID) AS NumDeposits from transactions group by accountid,transactiontype
                                         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ED
Wrote file afiedt.buf

  1  SELECT AccountID, COUNT(TransactionID) AS NumDeposits from transactions group by accountid,transactiontype
  2  FROM Transactions
  3  WHERE TransactionType = 'DEPOSITE'
  4* GROUP BY AccountID
SQL> /
FROM Transactions
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ED
Wrote file afiedt.buf

  1  SELECT AccountID, COUNT(TransactionID) AS NumDeposits from transactions
  2  FROM Transactions
  3  WHERE TransactionType = 'DEPOSITE'
  4* GROUP BY AccountID
SQL> /
FROM Transactions
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> ED
Wrote file afiedt.buf

  1  SELECT AccountID, COUNT(TransactionID) AS NumDeposits FROM Transactions
  2  WHERE TransactionType = 'DEPOSITE'
  3* GROUP BY AccountID
SQL> /

 ACCOUNTID NUMDEPOSITS                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
       100           1                                                                                                                                                                                  
       108           1                                                                                                                                                                                  
       102           1                                                                                                                                                                                  
       103           1                                                                                                                                                                                  
       106           1                                                                                                                                                                                  

SQL> ---Retrive the maximum transactions amount for each account
SQL> 
SQL> select accountid,max(amount) as max_trans_amount from transactions
  2  group by accountid;

 ACCOUNTID MAX_TRANS_AMOUNT                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
       100              200                                                                                                                                                                             
       108              500                                                                                                                                                                             
       102              300                                                                                                                                                                             
       101              600                                                                                                                                                                             
       107              300                                                                                                                                                                             
       104              400                                                                                                                                                                             
       105             1100                                                                                                                                                                             
       109              300                                                                                                                                                                             
       103              900                                                                                                                                                                             
       106              200                                                                                                                                                                             

10 rows selected.

SQL> --find minimum balance for each accounttype
SQL> 
SQL> select accounttype,min(balance) from accounts
  2  group by accounttype;

ACCOUNTTYPE          MIN(BALANCE)                                                                                                                                                                       
-------------------- ------------                                                                                                                                                                       
SAVING                     1000.9                                                                                                                                                                       
CURRENT                   1600.87                                                                                                                                                                       

SQL> ----Identify customers with an average account balance greater than 5000
SQL> 
SQL> select customerid from accounts group by customerid having  avg(balance)>5000;

CUSTOMERID                                                                                                                                                                                              
----------                                                                                                                                                                                              
         6                                                                                                                                                                                              
         8                                                                                                                                                                                              
         9                                                                                                                                                                                              

SQL> ----determine the total number of transactions for each account type
SQL> select transactiontype,sum(transactionid) from transactions group by transactiontype;

TRANSACTIONTYPE      SUM(TRANSACTIONID)                                                                                                                                                                 
-------------------- ------------------                                                                                                                                                                 
DEPOSITE                           1019                                                                                                                                                                 
WITHDRAW                           1026                                                                                                                                                                 

SQL> ---calculate the sum of transactions for each day
SQL> 
SQL> select tdate,sum(transactionid) as total_transactions from transactions
  2  group by tdate;

TDATE     TOTAL_TRANSACTIONS                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
31-JAN-22                205                                                                                                                                                                            
01-JAN-20                200                                                                                                                                                                            
01-SEP-20                202                                                                                                                                                                            
01-DEC-25                204                                                                                                                                                                            
15-SEP-20                207                                                                                                                                                                            
23-AUG-20                203                                                                                                                                                                            
11-APR-21                208                                                                                                                                                                            
11-NOV-20                201                                                                                                                                                                            
01-JUN-20                206                                                                                                                                                                            
21-MAR-21                209                                                                                                                                                                            

10 rows selected.

SQL> select tdate,count(transactionid) as total_transactions from transactions
  2  group by tdate;

TDATE     TOTAL_TRANSACTIONS                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
31-JAN-22                  1                                                                                                                                                                            
01-JAN-20                  1                                                                                                                                                                            
01-SEP-20                  1                                                                                                                                                                            
01-DEC-25                  1                                                                                                                                                                            
15-SEP-20                  1                                                                                                                                                                            
23-AUG-20                  1                                                                                                                                                                            
11-APR-21                  1                                                                                                                                                                            
11-NOV-20                  1                                                                                                                                                                            
01-JUN-20                  1                                                                                                                                                                            
21-MAR-21                  1                                                                                                                                                                            

10 rows selected.

SQL> select customerid,avg(balance) from accounts group by customerid having count(*)>1;

no rows selected

SQL> ---Retrive accounts with a balance greater than the avg balance across all accounts
SQL> 
SQL> select accountid,balance from accounts where balance>(select avg(balance) from accounts);

 ACCOUNTID    BALANCE                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       103       4780                                                                                                                                                                                   
       105      10000                                                                                                                                                                                   
       107       7865                                                                                                                                                                                   
       108       6700                                                                                                                                                                                   

SQL> ----calculate the total number of withdrawls for each account
SQL> 
SQL> select accountid,count(transactiontype) from transactions
  2  where transactiontype='WITHDRAW'
  3  group by accountid;

 ACCOUNTID COUNT(TRANSACTIONTYPE)                                                                                                                                                                       
---------- ----------------------                                                                                                                                                                       
       101                      1                                                                                                                                                                       
       107                      1                                                                                                                                                                       
       104                      1                                                                                                                                                                       
       105                      1                                                                                                                                                                       
       109                      1                                                                                                                                                                       

SQL> ---Identify accounts with a total transaction amount excceeding 3000
SQL> 
SQL> select accountid,sum(amount) as total_amount from transactions
  2  group by accountid
  3  having
  4  sum(amount)>3000;

no rows selected

SQL> ---Find the maximum balance for customers with multiple accounts
SQL> 
SQL> select customerid,max(balance) from customers
  2  group by customerid;
select customerid,max(balance) from customers
                      *
ERROR at line 1:
ORA-00904: "BALANCE": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select customerid,max(balance) from accounts
  2* group by customerid
SQL> /

CUSTOMERID MAX(BALANCE)                                                                                                                                                                                 
---------- ------------                                                                                                                                                                                 
         1         3200                                                                                                                                                                                 
         6        10000                                                                                                                                                                                 
         2      1600.87                                                                                                                                                                                 
         4         4780                                                                                                                                                                                 
         5       1000.9                                                                                                                                                                                 
         8         7865                                                                                                                                                                                 
         3         2100                                                                                                                                                                                 
         7         1200                                                                                                                                                                                 
         9         6700                                                                                                                                                                                 
        10         2300                                                                                                                                                                                 

10 rows selected.

SQL> ---Retrive the number of accounts with balance less than 1000
SQL> 
SQL> select acountid from accounts where balance<1000;
select acountid from accounts where balance<1000
       *
ERROR at line 1:
ORA-00904: "ACOUNTID": invalid identifier 


SQL> select accountid from accounts where balance<1000;

no rows selected

SQL> select accountid,count(*) from accounts
  2  where balance<1000
  3  group by accountid;

no rows selected

SQL> ---Find the customeres who have performed more than 5 transactions

  1* select accountid,count(transactionid) from transactions group by accountid having count(*)>5
SQL> /

no rows selected

SQL> ---calculate the total and average amount transaction amount for deposite and withdraw
SQL> 
SQL> select transactiontype,sum(amount) as total_amount, avg(amount) as average_amount from transactions
  2  where transactiontype in('WITHDRAW','DEPOSITE')
  3  group by transactiontype;

TRANSACTIONTYPE      TOTAL_AMOUNT AVERAGE_AMOUNT                                                                                                                                                        
-------------------- ------------ --------------                                                                                                                                                        
DEPOSITE                     2100            420                                                                                                                                                        
WITHDRAW                     2700            540                                                                                                                                                        

SQL> ---Write query to find the total number of transactions per day having more than 2 transactions
SQL> 
SQL> select tdate,count(transactionid) as total transactions from transactions
  2  group by tdate
  3  having count(*)>2;
select tdate,count(transactionid) as total transactions from transactions
                                           *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select tdate,count(transactionid) as total_transactions from transactions
  2  group by tdate
  3* having count(*)>2
SQL> /

no rows selected

SQL> --- Write a query to list all customers id who have made deposites totaling more than 1000
SQL> 
SQL> select accountid,sum(amount) as total_deposite from transactions
  2  where transactiontype='DEPOSITE'
  3  group by accountid;

 ACCOUNTID TOTAL_DEPOSITE                                                                                                                                                                               
---------- --------------                                                                                                                                                                               
       100            200                                                                                                                                                                               
       108            500                                                                                                                                                                               
       102            300                                                                                                                                                                               
       103            900                                                                                                                                                                               
       106            200                                                                                                                                                                               

SQL> ed
Wrote file afiedt.buf

  1  select accountid,sum(amount) as total_deposite from transactions
  2  where transactiontype='DEPOSITE'
  3  group by accountid
  4* having sum(amount)>1000
SQL> /

no rows selected

SQL> spool on
