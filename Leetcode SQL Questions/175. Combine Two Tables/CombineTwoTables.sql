
select firstName, lastName, city, state from Person
left join Address
on Address.personId = Person.personId;