SELECT sum(transaction_amt) FROM `ib_transactions` WHERE tr_type = 'Deposit'

UPDATE `ib_bankaccounts` SET trans_amount = (SELECT sum(transaction_amt) FROM `ib_transactions` WHERE tr_type = 'Deposit'

update ib_bankaccounts set trans_amount=( SELECT sum(transaction_amt) FROM `ib_transactions` WHERE tr_type = 'Deposit')


SELECT * FROM `ib_ekubaccounts` where account_number not in (SELECT ticket_id FROM `winners`) ORDER BY RAND() LIMIT 1