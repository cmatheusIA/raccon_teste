/* Q1. Qual foi a receita de cada tipo de pagamento no dia 15 de Março de 2018?*/

select total_amount from nw_taxi where pickup_datatime='2018-03-15' group by payment_type

/*Q2.  Considere que corridas de táxi válidas tenham de 1 a 5 passageiros. Qual a
quantidade de corridas feitas com cada número de passageiros?*/
select COUNT(passenger_count) from nw_taxi  where passenger_count between  1 and 5 order by COUNT(passenger_count) desc

/*Q3.  Considerando apenas as corridas que houveram pedágios (tolls), qual a média do
valor pago em pedágios por corrida?*/
select  avg(tolls_amount) from nw_taxi  where tolls_amount is not 0

/* Q4. Qual a hora que mais começaram corridas?*/
select max(count(distinct pickup_datatime)) from nw_taxi 