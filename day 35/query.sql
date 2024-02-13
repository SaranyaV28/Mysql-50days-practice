Question 1: From the doctors table, fetch the details of doctors who work in the same hospital but in different speciality.
select d1.name, d1.speciality,d1.hospital
from doctors d1
join doctors d2
on d1.hospital = d2.hospital and d1.speciality <> d2.speciality
and d1.id <> d2.id;

Qusetion 2: Now find the doctors who work in same hospital irrespective of their speciality.

select d1.name, d1.speciality,d1.hospital
from doctors d1
join doctors d2
on d1.hospital = d2.hospital and d1.speciality = d2.speciality
and d1.id <> d2.id;

