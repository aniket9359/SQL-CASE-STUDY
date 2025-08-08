SQL> CREATE TABLE Customers
  2  (CustomerID  NUMBER  PRIMARY KEY,
  3  NAME  VARCHAR(25) NOT NULL,
  4  EMAIL  VARCHAR(25) UNIQUE,
  5  PHONE  VARCHAR(15) NOT NULL,
  6  ADDRESS  VARCHAR(100));

Table created.

SQL> INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS');
Enter value for customerid: 1
Enter value for name: AJAY
Enter value for email: ajay12@gmail.com
Enter value for phone: 9234567890
Enter value for address: 12BARAMAT ST
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('1','AJAY','ajay12@gmail.com','9234567890','12BARAMAT ST')

1 row created.

SQL> /
Enter value for customerid: 2
Enter value for name: VIJAY
Enter value for email: vijay@gmail.com
Enter value for phone: 8745328756
Enter value for address: NAGPUR34 BH
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('2','VIJAY','vijay@gmail.com','8745328756','NAGPUR34 BH')

1 row created.

SQL> /
Enter value for customerid: 3
Enter value for name: SANJAY
Enter value for email: sanjay76@gmail.com
Enter value for phone: 7888453945
Enter value for address: SWARGET34 PUNE
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('3','SANJAY','sanjay76@gmail.com','7888453945','SWARGET34 PUNE')

1 row created.

SQL> /
Enter value for customerid: 4
Enter value for name: RAGHAV
Enter value for email: raghavsh21@gmail.com
Enter value for phone: 8958370754
Enter value for address: PIMPARI PN32
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('4','RAGHAV','raghavsh21@gmail.com','8958370754','PIMPARI PN32')

1 row created.

SQL> /
Enter value for customerid: 5
Enter value for name: MANISH
Enter value for email: manish55@gmail.com
Enter value for phone: 7896507885
Enter value for address: VARSOLI ALIBAG21
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('5','MANISH','manish55@gmail.com','7896507885','VARSOLI ALIBAG21')

1 row created.

SQL> /
Enter value for customerid: 6
Enter value for name: DATTA
Enter value for email: datta@gmail.com
Enter value for phone: 7767943590
Enter value for address: DADAR MUM23
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('6','DATTA','datta@gmail.com','7767943590','DADAR MUM23')

1 row created.

SQL> /
Enter value for customerid: 7
Enter value for name: MEDHAVI
Enter value for email: medhavi@gmail.com
Enter value for phone: 87589123654
Enter value for address: BANER PU41
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('7','MEDHAVI','medhavi@gmail.com','87589123654','BANER PU41')

1 row created.

SQL> /
Enter value for customerid: 8
Enter value for name: AWANTIKA
Enter value for email: awantika23@gmail.com
Enter value for phone: 9787321976
Enter value for address: BALEWADI PUNE12
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('8','AWANTIKA','awantika23@gmail.com','9787321976','BALEWADI PUNE12')

1 row created.

SQL> /
Enter value for customerid: 9
Enter value for name: VIRAT
Enter value for email: VIRATMH@GMAIL.COM
Enter value for phone: 8845231167
Enter value for address: SATARA ST45
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('9','VIRAT','VIRATMH@GMAIL.COM','8845231167','SATARA ST45')

1 row created.

SQL> /
Enter value for customerid: 10
Enter value for name: VISHAKHA
Enter value for email: vishakha34@gmail.com
Enter value for phone: DHAWADSHI ST
Enter value for address: 
old   1: INSERT INTO CUSTOMERS VALUES('&CUSTOMERID','&NAME','&EMAIL','&PHONE','&ADDRESS')
new   1: INSERT INTO CUSTOMERS VALUES('10','VISHAKHA','vishakha34@gmail.com','DHAWADSHI ST','')

1 row created.

SQL> UPDATE CUSTOMERS
  2  SET PHONE=7689554676
  3  WHERE CUSTOMERID=10;

1 row updated.

SQL> UPDATE CUSTOMERS
  2  SET ADDRESS='DHAWADSHI ST'
  3  WHERE CUSTOMERID=10;

1 row updated.

SQL> CREATE TABLE ACCOUNTS
  2  (ACCOUNTID  NUMBER PRIMARY KEY,
  3  CUSTOMERID  NUMBER REFERENCES CUSTOMERS(CUSTOMERID),
  4  AccountType  VARCHAR(20) NOT NULL,
  5  BALANCE NUMBER DEFAULT 0 CHECK(BALANCE>=0),
  6  );
)
*
ERROR at line 6:
ORA-00904: : invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE ACCOUNTS
  2  (ACCOUNTID  NUMBER PRIMARY KEY,
  3  CUSTOMERID  NUMBER REFERENCES CUSTOMERS(CUSTOMERID),
  4  AccountType  VARCHAR(20) NOT NULL,
  5* BALANCE NUMBER DEFAULT 0 CHECK(BALANCE>=0))
SQL> /

Table created.

SQL> INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE');
Enter value for accountid: 100
Enter value for customerid: 1
Enter value for accounttype: SAVING
Enter value for balance: 3200.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('100','1','SAVING','3200.00')

1 row created.

SQL> /
Enter value for accountid: 101
Enter value for customerid: 2
Enter value for accounttype: CURRENT
Enter value for balance: 1600.87
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('101','2','CURRENT','1600.87')

1 row created.

SQL> /
Enter value for accountid: 102
Enter value for customerid: 3
Enter value for accounttype: CURRENT
Enter value for balance: 2100.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('102','3','CURRENT','2100.00')

1 row created.

SQL> /
Enter value for accountid: 103
Enter value for customerid: 4
Enter value for accounttype: SAVING
Enter value for balance: 4780.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('103','4','SAVING','4780.00')

1 row created.

SQL> /
Enter value for accountid: 104
Enter value for customerid: 5
Enter value for accounttype: SAVING
Enter value for balance: 1000.90
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('104','5','SAVING','1000.90')

1 row created.

SQL> /
Enter value for accountid: 105
Enter value for customerid: 6
Enter value for accounttype: CURRENT
Enter value for balance: 10000.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('105','6','CURRENT','10000.00')

1 row created.

SQL> /
Enter value for accountid: 106
Enter value for customerid: 7
Enter value for accounttype: SAVING
Enter value for balance: 1200.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('106','7','SAVING','1200.00')

1 row created.

SQL> /
Enter value for accountid: 107
Enter value for customerid: 8
Enter value for accounttype: SAVING
Enter value for balance: 7865.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('107','8','SAVING','7865.00')

1 row created.

SQL> /
Enter value for accountid: 108
Enter value for customerid: 9
Enter value for accounttype: CURRENT
Enter value for balance: 6700.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('108','9','CURRENT','6700.00')

1 row created.

SQL> /
Enter value for accountid: 109
Enter value for customerid: 10
Enter value for accounttype: CURRENT
Enter value for balance: 2300.00
old   1: INSERT INTO ACCOUNTS VALUES('&ACCOUNTID','&CUSTOMERID','&ACCOUNTTYPE','&BALANCE')
new   1: INSERT INTO ACCOUNTS VALUES('109','10','CURRENT','2300.00')

1 row created.

SQL> CREATE TABLE TRANSACTIONS
  2  (TRANSACTIONID  NUMBER PRIMARY KEY,
  3  AccountID NUMBER  REFERENCES ACCOUNTS(ACCOUNTID),
  4  TDATE DATE NOT NULL,
  5  AMOUNT NUMBER NOT NULL CHECK(AMOUNT>=0),
  6  TransactionType  VARCHAR(20) NOT NULL);

Table created.

  1  INSERT ALL
  2  INTO TRANSACTIONS VALUES(200,100,TO_DATE('01-01-2020','DD-MM-YYYY'),200.00,'DEPOSITE')
  3  INTO TRANSACTIONS VALUES(201,101,TO_DATE('11-11-2020','DD-MM-YYYY'),600.00,'WITHDRAW')
  4  INTO TRANSACTIONS VALUES(202,102,TO_DATE('01-09-2020','DD-MM-YYYY'),300.00,'DEPOSITE')
  5  INTO TRANSACTIONS VALUES(203,103,TO_DATE('23-08-2020','DD-MM-YYYY'),900.00,'DEPOSITE')
  6  INTO TRANSACTIONS VALUES(204,104,TO_DATE('01-12-2025','DD-MM-YYYY'),400.00,'WITHDRAW')
  7  INTO TRANSACTIONS VALUES(205,105,TO_DATE('31-01-2022','DD-MM-YYYY'),1100.00,'WITHDRAW')
  8  INTO TRANSACTIONS VALUES(206,106,TO_DATE('01-06-2020','DD-MM-YYYY'),200.00,'DEPOSITE')
  9  INTO TRANSACTIONS VALUES(207,107,TO_DATE('15-09-2020','DD-MM-YYYY'),300.00,'WITHDRAW')
 10  INTO TRANSACTIONS VALUES(208,108,TO_DATE('11-04-2021','DD-MM-YYYY'),500.00,'DEPOSITE')
 11  INTO TRANSACTIONS VALUES(209,109,TO_DATE('21-03-2021','DD-MM-YYYY'),300.00,'WITHDRAW')
 12* SELECT * FROM DUAL
SQL> /

10 rows created.

SQL> COMMIT;

Commit complete.

SQL> SPOOL ON
