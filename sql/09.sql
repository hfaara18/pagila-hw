/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select staff.first_name, staff.last_name, sum(payment.amount) from staff inner join payment on staff.staff_id=payment.staff_id where date_part('year', payment.payment_date)=2020 and date_part('month', payment.payment_date)=1 group by staff.staff_id order by first_name;
