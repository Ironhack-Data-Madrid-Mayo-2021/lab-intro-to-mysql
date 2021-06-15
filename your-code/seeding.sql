USE lab_mysql;

INSERT INTO cars VALUES
(0, 978475124, 'Seat', 'Panda', '2000-10-15', 'Blue'),
(1, 495167433, 'Citroen', 'C3', '2016-11-14', 'White'),
(2, 123946731, 'Peugeot', '508', '2020-11-15', 'White');

INSERT INTO customers VALUES
(0, 'Francisco', 617458974, 'francisco.j@españa.com', 'Calle Cuatro Caminos', 'Madrid', 'Madrid', 'Spain', 28456),
(1, 'Toni', 645781245, 'toni.k@alemania.com', 'Alexander Platz', 'Berlin', 'Berlin', 'Germany', 45628),
(2, 'Vinicius', 6783266, 'vini.j@brasil.com', 'Playa de Ipanema', 'Rio', 'Rio', 'Brasil', 47428);

INSERT INTO salespersons VALUES
(01, 'Sebastien', 'Berlin'),
(02, 'Manolo', 'Madrid'),
(03, 'Casemiro', 'Rio');

INSERT INTO invoices VALUES
(1547, '2000-10-15', 978475124, 0, 02),
(1897, '2016-11-14', 495167433, 1, 01),
(1714, '2020-11-15', 123946731, 2, 03);