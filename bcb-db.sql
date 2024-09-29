CREATE TABLE bcb_customer (
  customer_id SERIAL NOT NULL PRIMARY KEY, 
  customer_name TEXT NOT NULL, 
  customer_email TEXT NOT NULL,
  customer_phone TEXT NOT NULL,
  customer_document VARCHAR(11) NOT NULL,
  is_company BOOLEAN NOT NULL,
  company_name TEXT,
  company_document VARCHAR(14)
);

CREATE TABLE customer_plan(
  customer_plan_id SERIAL NOT NULL PRIMARY KEY, 
  customer_id INTEGER NOT NULL REFERENCES bcb_customer(customer_id), 
  plan_type TEXT NOT NULL,
  amount NUMERIC(8,2) DEFAULT 0.00
);

CREATE TABLE bcb_message(
  message_id SERIAL NOT NULL PRIMARY KEY, 
  customer_id INTEGER NOT NULL REFERENCES bcb_customer(customer_id), 
  is_whatsapp BOOLEAN NOT NULL,
  message_text TEXT NOT NULL,
  message_status TEXT NOT NULL,
  request_timestamp TIMESTAMP NOT NULL
);

INSERT INTO bcb_customer (customer_name, customer_email, customer_phone, customer_document, is_company, company_name, company_document)
VALUES ('Fulano da Silva', 'fulano@mail.com',	'44999990000', '39397016024', false, '', ''),
       ('Ciclana de Souza',	'ciclana@mail.com',	'44999888777', '73464924041', true, 'Ciclana Modas', '92715301000110'),
       ('Beltrano Seunome',	'beltrano@mail.com', '44998877321', '06383595032', true, 'Beltra Tur', '88206351000102'),
       ('Maria Irradiante',	'maria@mail.com',	'44988877123', '72851642081', false, '', '');

INSERT INTO customer_plan (customer_id, plan_type, amount)
VALUES (1, 'POSTPAID', 10.00),
       (2, 'POSTPAID', 20.00),
       (3, 'PREPAID', 0.00),
       (4, 'PREPAID', 0.25);