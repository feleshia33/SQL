-- Gets player number and sex as Fe/male who joined after 1980
select playerno, case sex when 'F' then 'Female' else 'Male' END AS SEX, Name
From players
where joined > 1980

-- Insert additional player 
insert into players (playerno, name, initials, birth_date, sex, joined, street, houseno, postcode, town, phoneno, leagueno)
values (7, 'Odie', 'D','1989-12-18', 'M', 1987, 'Burnham St', 13, 98347, 'Kyle', '085-40295', 7325)

-- Gets players number, year joined, age group
select playerno, joined,
	case
		when joined < 1980 then 'Senior'
        when joined < 1985 then 'Junior'
        else 'Children' end as age_group
	from players
    order by joined

-- Gets payment number, year of penalty after 1980
select paymentno, year(payment_date)
from penalties
where year(payment_date) > 1980

-- Gets players number, last name that start with a 'C', and takes the first letter of the initials, followed by a decimal and last name
select playerno, concat(left(initials, 1), '. ', name) as full_name
from players
where left(name, 1) = 'B'

-- Gets player number less than 90, name of day, month born, day sequence number for birth date
select playerno, dayname(birth_date), monthname(birth_date), dayofyear(birth_date)
from players
where playerno < 90

-- Gets player number and name and odd player numbers
select playerno, name
from players
where playerno % 2 != 0

-- Get player number, payment date, payment date plus 7 days
select playerno, payment_date, payment_date + interval 7 day
from penalties















