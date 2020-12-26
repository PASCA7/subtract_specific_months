
/* Create a table called  customer_account_info */
CREATE TABLE customer_account_info(

customer_id BIGINT NOT NULL UNIQUE,
account_number BIGINT NOT NULL UNIQUE,
transaction_time timestamp NOT NULL,
balance float NOT NULL

);

/* Create few records in this table */
INSERT INTO customer_account_info

VALUES

('1', '123456789','2008-01-01 02:06:01', "52312.00"),
('2', '123456781','2008-01-02 05:05:01', "32312.00"),
('3', '123456782','2008-01-01 07:00:01', "27312.00"),
('4', '123456783','2008-01-01 01:03:01', "82312.00"),
('5', '123456784','2008-01-02 12:40:01', "92312.00"),
('6', '123456785','2008-01-02 00:00:01', "1312.00"),
('7', '123456786','2008-01-01 02:70:01', "12312.00"),
('8', '123456787','2008-01-01 10:10:01', "142312.00"),
('9', '123456788','2008-01-03 11:030:01', "102312.00"),
('10', '123456780','2008-01-02 00:10:01', "82312.00"),
('11', '1234567810','2008-01-01 5:44:01', "72312.00");


Select 
  customer_id,
  account_number,
  Date(transaction_time) as Day,
  balance as End_of_Day_Balance
  
From
  customer_account_info
Group By
  customer_id,
  account_number,
  Date(transaction_time)
Order By
  transaction_time desc 
;


