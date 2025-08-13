SQL> 
SQL> -- CONVERT ALL CUSTOMER NAMES TO UPPERCASE IN CUSTOMER TABLE
SQL> 
SQL> SELECT UPPER(NAME) AS UPPERCASE FROM CUSTOMERS;

UPPERCASE                                                                                                                                                                                               
-------------------------                                                                                                                                                                               
AJAY                                                                                                                                                                                                    
VIJAY                                                                                                                                                                                                   
SANJAY                                                                                                                                                                                                  
RAGHAV                                                                                                                                                                                                  
MANISH                                                                                                                                                                                                  
DATTA                                                                                                                                                                                                   
MEDHAVI                                                                                                                                                                                                 
AWANTIKA                                                                                                                                                                                                
VIRAT                                                                                                                                                                                                   
VISHAKHA                                                                                                                                                                                                

10 rows selected.

SQL> --WRITE NAMES OF CUSTOMERS IN LOWERCASE FROM THE TABLE CUSTOMERS
SQL> 
SQL> SELECT LOWER(NAME) AS LOWERCASE FROM CUSTOMERS;

LOWERCASE                                                                                                                                                                                               
-------------------------                                                                                                                                                                               
ajay                                                                                                                                                                                                    
vijay                                                                                                                                                                                                   
sanjay                                                                                                                                                                                                  
raghav                                                                                                                                                                                                  
manish                                                                                                                                                                                                  
datta                                                                                                                                                                                                   
medhavi                                                                                                                                                                                                 
awantika                                                                                                                                                                                                
virat                                                                                                                                                                                                   
vishakha                                                                                                                                                                                                

10 rows selected.

SQL> --GET THE INITIAL CHARACTER OF A CUSTOMER NAME BY EXTRACTING THE FIRST LETTER OF THE NAME
SQL> SELECT SUBSTR(NAME,1,1) AS INTIAL FROM CUSTOMERS;

INTI                                                                                                                                                                                                    
----                                                                                                                                                                                                    
A                                                                                                                                                                                                       
V                                                                                                                                                                                                       
S                                                                                                                                                                                                       
R                                                                                                                                                                                                       
M                                                                                                                                                                                                       
D                                                                                                                                                                                                       
M                                                                                                                                                                                                       
A                                                                                                                                                                                                       
V                                                                                                                                                                                                       
V                                                                                                                                                                                                       

10 rows selected.

SQL> SELECT NVL(ADDRESS,'NOT_AVAILABLE') FROM CUSTOMERS;

NVL(ADDRESS,'NOT_AVA                                                                                                                                                                                    
--------------------                                                                                                                                                                                    
12BARAMAT ST                                                                                                                                                                                            
NAGPUR34 BH                                                                                                                                                                                             
SWARGET34 PUNE                                                                                                                                                                                          
PIMPARI PN32                                                                                                                                                                                            
NOT_AVAILABLE                                                                                                                                                                                           
DADAR MUM23                                                                                                                                                                                             
BANER PU41                                                                                                                                                                                              
BALEWADI PUNE12                                                                                                                                                                                         
SATARA ST45                                                                                                                                                                                             
DHAWADSHI ST                                                                                                                                                                                            

10 rows selected.

SQL> --ROUND THE BALANCE IN THE ACCOUNTS TABLE
SQL> 
SQL> SELECT BALANCE,ROUND(BALANCE) AS ROUNDBALANCE FROM ACCOUNTS;

   BALANCE ROUNDBALANCE                                                                                                                                                                                 
---------- ------------                                                                                                                                                                                 
      3200         3200                                                                                                                                                                                 
   1600.87         1601                                                                                                                                                                                 
      2100         2100                                                                                                                                                                                 
      4780         4780                                                                                                                                                                                 
    1000.9         1001                                                                                                                                                                                 
     10000        10000                                                                                                                                                                                 
      1200         1200                                                                                                                                                                                 
      7865         7865                                                                                                                                                                                 
      6700         6700                                                                                                                                                                                 
      2300         2300                                                                                                                                                                                 

10 rows selected.

SQL> --FORMAT ACCOUNT BALANCE WITH COMMAS FOR EASIER READING

SQL> SELECT TO_CHAR(BALANCE,'9,999,999.99') FROM ACCOUNTS;

TO_CHAR(BALAN                                                                                                                                                                                           
-------------                                                                                                                                                                                           
     3,200.00                                                                                                                                                                                           
     1,600.87                                                                                                                                                                                           
     2,100.00                                                                                                                                                                                           
     4,780.00                                                                                                                                                                                           
     1,000.90                                                                                                                                                                                           
    10,000.00                                                                                                                                                                                           
     1,200.00                                                                                                                                                                                           
     7,865.00                                                                                                                                                                                           
     6,700.00                                                                                                                                                                                           
     2,300.00                                                                                                                                                                                           

10 rows selected.

--SELECT YEAR FROM TRANSACTION DATE

SQL> SELECT TO_CHAR(TDATE,'YEAR') FROM TRANSACTIONS;

TO_CHAR(TDATE,'YEAR')                                                                                                                                                                                   
------------------------------------------                                                                                                                                                              
TWENTY TWENTY                                                                                                                                                                                           
TWENTY TWENTY                                                                                                                                                                                           
TWENTY TWENTY                                                                                                                                                                                           
TWENTY TWENTY                                                                                                                                                                                           
TWENTY TWENTY-FIVE                                                                                                                                                                                      
TWENTY TWENTY-TWO                                                                                                                                                                                       
TWENTY TWENTY                                                                                                                                                                                           
TWENTY TWENTY                                                                                                                                                                                           
TWENTY TWENTY-ONE                                                                                                                                                                                       
TWENTY TWENTY-ONE                                                                                                                                                                                       

10 rows selected.

SQL> --EXTRACT THE DAY FROM A TRANSACTION DATE IN THE TRANSACTION TABLE
SQL> 
SQL> SELECT TO_CHAR(TDATE,'DAY') FROM TRANSACTIONS;

TO_CHAR(TDATE,'DAY')                                                                                                                                                                                    
------------------------------------                                                                                                                                                                    
WEDNESDAY                                                                                                                                                                                               
WEDNESDAY                                                                                                                                                                                               
TUESDAY                                                                                                                                                                                                 
SUNDAY                                                                                                                                                                                                  
MONDAY                                                                                                                                                                                                  
MONDAY                                                                                                                                                                                                  
MONDAY                                                                                                                                                                                                  
TUESDAY                                                                                                                                                                                                 
SUNDAY                                                                                                                                                                                                  
SUNDAY                                                                                                                                                                                                  

10 rows selected.

SQL> SELECT NAME,LENGTH(NAME) AS LENGTH FROM CUSTOMERS;

NAME                          LENGTH                                                                                                                                                                    
------------------------- ----------                                                                                                                                                                    
AJAY                               4                                                                                                                                                                    
VIJAY                              5                                                                                                                                                                    
SANJAY                             6                                                                                                                                                                    
RAGHAV                             6                                                                                                                                                                    
MANISH                             6                                                                                                                                                                    
DATTA                              5                                                                                                                                                                    
MEDHAVI                            7                                                                                                                                                                    
AWANTIKA                           8                                                                                                                                                                    
VIRAT                              5                                                                                                                                                                    
VISHAKHA                           8                                                                                                                                                                    

10 rows selected.

SQL> --FORMAT TRANSACTIONS DATES AS DD-MM-YYYY
SQL> 
SQL> SELECT TDATE,TO_CHAR(TDATE,'DD-MM-YYYY') AS FORMATDATE FROM TRANSACTIONS;

TDATE     FORMATDATE                                                                                                                                                                                    
--------- ----------                                                                                                                                                                                    
01-JAN-20 01-01-2020                                                                                                                                                                                    
11-NOV-20 11-11-2020                                                                                                                                                                                    
01-SEP-20 01-09-2020                                                                                                                                                                                    
23-AUG-20 23-08-2020                                                                                                                                                                                    
01-DEC-25 01-12-2025                                                                                                                                                                                    
31-JAN-22 31-01-2022                                                                                                                                                                                    
01-JUN-20 01-06-2020                                                                                                                                                                                    
15-SEP-20 15-09-2020                                                                                                                                                                                    
11-APR-21 11-04-2021                                                                                                                                                                                    
21-MAR-21 21-03-2021                                                                                                                                                                                    

10 rows selected.

SQL> --MAKE SURE THAT EACH WORD IN THE CUSTOMER NAME COLUMN IS CAPITALIZED WITH FIRST LETTER
SQL> 
SQL> SELECT INITCAP(NAME) FROM CUSTOMERS;

INITCAP(NAME)                                                                                                                                                                                           
-------------------------                                                                                                                                                                               
Ajay                                                                                                                                                                                                    
Vijay                                                                                                                                                                                                   
Sanjay                                                                                                                                                                                                  
Raghav                                                                                                                                                                                                  
Manish                                                                                                                                                                                                  
Datta                                                                                                                                                                                                   
Medhavi                                                                                                                                                                                                 
Awantika                                                                                                                                                                                                
Virat                                                                                                                                                                                                   
Vishakha                                                                                                                                                                                                

10 rows selected.

SQL> --CALCULATE THE ABSOLUTE VALUE OF NEGETIVE BALANCE IN THE ACCOUNTS TABLE
SQL> 
SQL> SELECT ABS(BALANCE) FROM ACCOUNTS;

ABS(BALANCE)                                                                                                                                                                                            
------------                                                                                                                                                                                            
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

SQL> -- PRINT THE CURRENT DATE AND TIME USING A FUNCTION
SQL> 
SQL> SELECT SYSDATE FROM DUAL;

SYSDATE                                                                                                                                                                                                 
---------                                                                                                                                                                                               
13-AUG-25                                                                                                                                                                                               

SQL> --EXTRACT LAST FOUR DIGITS OF THE PHONE NUMBER OF A CUSTOMER
SQL> 
SQL> SELECT SUBSTR(PHONE,7) FROM CUSTOMERS;

SUBSTR(PHONE,7)                                                                                                                                                                                         
------------------------------------                                                                                                                                                                    
7890                                                                                                                                                                                                    
8756                                                                                                                                                                                                    
3945                                                                                                                                                                                                    
0754                                                                                                                                                                                                    
7885                                                                                                                                                                                                    
3590                                                                                                                                                                                                    
23654                                                                                                                                                                                                   
1976                                                                                                                                                                                                    
1167                                                                                                                                                                                                    
4676                                                                                                                                                                                                    

10 rows selected.

SQL> --SHOW TODAY DATE USING SINGLE ROW FUNCTION
SQL> SELECT SYSDATE AS TODAYDATE FROM DUAL;

TODAYDATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
13-AUG-25                                                                                                                                                                                               

SQL> --CONVERT THE BALANCE COLUMN TO STRING
SQL> 
SQL> SELECT TO_CHAR(BALANCE,'9,999,999.99') FROM ACCOUNTS;

TO_CHAR(BALAN                                                                                                                                                                                           
-------------                                                                                                                                                                                           
     3,200.00                                                                                                                                                                                           
     1,600.87                                                                                                                                                                                           
     2,100.00                                                                                                                                                                                           
     4,780.00                                                                                                                                                                                           
     1,000.90                                                                                                                                                                                           
    10,000.00                                                                                                                                                                                           
     1,200.00                                                                                                                                                                                           
     7,865.00                                                                                                                                                                                           
     6,700.00                                                                                                                                                                                           
     2,300.00                                                                                                                                                                                           

10 rows selected.

SQL> --CONCATENATE ACCOUNTTYPE AND BALANCE INTO ONE FORMATTED STRING TO TEXT
SQL> 
SQL> SELECT CONCAT(ACCOUNTTYPE,' ',BALANCE) FROM ACCOUNTS;
SELECT CONCAT(ACCOUNTTYPE,' ',BALANCE) FROM ACCOUNTS
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT CONCAT(ACCOUNTTYPE,'',BALANCE) FROM ACCOUNTS;
SELECT CONCAT(ACCOUNTTYPE,'',BALANCE) FROM ACCOUNTS
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT CONCAT(ACCOUNTTYPE,BALANCE) FROM ACCOUNTS;

CONCAT(ACCOUNTTYPE,BALANCE)                                                                                                                                                                             
------------------------------------------------------------                                                                                                                                            
SAVING3200                                                                                                                                                                                              
CURRENT1600.87                                                                                                                                                                                          
CURRENT2100                                                                                                                                                                                             
SAVING4780                                                                                                                                                                                              
SAVING1000.9                                                                                                                                                                                            
CURRENT10000                                                                                                                                                                                            
SAVING1200                                                                                                                                                                                              
SAVING7865                                                                                                                                                                                              
CURRENT6700                                                                                                                                                                                             
CURRENT2300                                                                                                                                                                                             

10 rows selected.

SQL> SELECT CONCAT(ACCOUNTTYPE ,BALANCE) FROM ACCOUNTS;

CONCAT(ACCOUNTTYPE,BALANCE)                                                                                                                                                                             
------------------------------------------------------------                                                                                                                                            
SAVING3200                                                                                                                                                                                              
CURRENT1600.87                                                                                                                                                                                          
CURRENT2100                                                                                                                                                                                             
SAVING4780                                                                                                                                                                                              
SAVING1000.9                                                                                                                                                                                            
CURRENT10000                                                                                                                                                                                            
SAVING1200                                                                                                                                                                                              
SAVING7865                                                                                                                                                                                              
CURRENT6700                                                                                                                                                                                             
CURRENT2300                                                                                                                                                                                             

10 rows selected.

SQL> SPOOL ON
