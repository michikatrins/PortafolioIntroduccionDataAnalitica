COPY (SELECT * FROM public.actor) TO 'D:/Portafolio/actor.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.address) TO 'D:/Portafolio/address.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.category) TO 'D:/Portafolio/category.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.city) TO 'D:/Portafolio/city.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.country) TO 'D:/Portafolio/country.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.customer) TO 'D:/Portafolio/customer.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.film) TO 'D:/Portafolio/film.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.film_actor) TO 'D:/Portafolio/film_actor.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.film_category) TO 'D:/Portafolio/film_category.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.inventory) TO 'D:/Portafolio/inventory.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.language) TO 'D:/Portafolio/language.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.payment) TO 'D:/Portafolio/payment.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.rental) TO 'D:/Portafolio/rental.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.staff) TO 'D:/Portafolio/staff.csv' WITH (FORMAT csv, HEADER);
COPY (SELECT * FROM public.store) TO 'D:/Portafolio/store.csv' WITH (FORMAT csv, HEADER);
