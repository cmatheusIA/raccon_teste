/* Q1. Qual foi a receita de cada tipo de pagamento no dia 15 de Março de 2018?*/

select total_amount where pickup_datatime='2018-03-15' group by payment_type

/*Q2.  Considere que corridas de táxi válidas tenham de 1 a 5 passageiros. Qual a
quantidade de corridas feitas com cada número de passageiros?*/