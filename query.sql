create database templedb;

use templedb;

create table states 
(
    state_id int PRIMARY key auto_increment,
    state char(60) not null
);

create table cities
(
    city_id int PRIMARY KEY auto_increment,
    city char(60) not null,
    state_id int not null,
    CONSTRAINT fk_cities_states FOREIGN KEY (state_id) REFERENCES states (state_id)
);

create table status 
(
    status_id int PRIMARY KEY auto_increment,
    status char(20) not null
);

create table deities
(
    deity_id int PRIMARY KEY auto_increment,
    name char(25) not null
);

create table response_types 
(
    response_type_id int PRIMARY key auto_increment,
    type char(100) not null
);

create table admin
(
    admin_id int PRIMARY KEY auto_increment,
    name char(50) not null,
    email char(255) not null unique,
    password char(255) not null,
    phone char(10) not null
);

create table temple_trustees
(
    temple_trustee_id int PRIMARY KEY auto_increment,
    trustee_name char(80) not null,
    temple_name char(80) not null,
    email char(255) not null unique,
    password char(255) not null,
    otp varchar(10),
    city_id int,
    website char(100),
    address char(255),
    description varchar(2000),
    deity_id int,
    status_id int,
    CONSTRAINT fk_temp_cities FOREIGN KEY (city_id) REFERENCES cities (city_id),
    CONSTRAINT fk_temp_deity FOREIGN KEY (deity_id) REFERENCES deities (deity_id),
    CONSTRAINT fk_temp_status FOREIGN KEY (status_id) REFERENCES status (status_id)
);

create table temple_pics 
(
    temple_pic_id int PRIMARY KEY auto_increment,
    path char(255) not null,
    temple_trustee_id int,
    CONSTRAINT fk_tempics_trustee FOREIGN KEY (temple_trustee_id) REFERENCES temple_trustees (temple_trustee_id)
);

create table prasads 
(
    prasad_id int PRIMARY KEY auto_increment,
    name char(30) not NULL,
    quantity int not null,
    price int not null,
    temple_trustee_id int not null,
    CONSTRAINT fk_prasads_temp_trustee FOREIGN key (temple_trustee_id) REFERENCES temple_trustees (temple_trustee_id)
);

create table prasad_pics 
(
    prasad_pic_id int PRIMARY KEY auto_increment,
    path char(255) not null,
    prasad_id int ,
    CONSTRAINT fk_prasad_pics_prasads FOREIGN KEY (prasad_id) REFERENCES prasads (prasad_id)
);

create table dharamshalas
(
    dharamshala_id int PRIMARY key auto_increment,
    name char(80) not null,
    temple_trustee_id int not null,
    amentites varchar(1000) not null,
    address char(255) not null,
    CONSTRAINT fk_dharamshalas_temp_trustee FOREIGN KEY (temple_trustee_id) REFERENCES temple_trustees (temple_trustee_id)
);

create table devotees 
(
    devotee_id int PRIMARY KEY auto_increment,
    name char(50) not null,
    email char(255) not null unique,
    password char(255) not null,
    phone char(10) not null unique,
    city_id int,
    address char(255),
    gender char(1),
    dob DATE,
    gotra char(30),
    status_id int,
    CONSTRAINT fk_devotees_cities FOREIGN KEY (city_id) REFERENCES cities (city_id),
    CONSTRAINT fk_devotees_status FOREIGN KEY (status_id) REFERENCES status (status_id)
);

create table my_experiences
(
    my_experiences_id int PRIMARY KEY auto_increment,
    devotee_id int,
    temple_trustee_id int,
    response_type_id int,
    description varchar(5000) not null,
    post_date DATETIME not null,
    status_id int,
    CONSTRAINT fk_experiences_devotee FOREIGN KEY (devotee_id) REFERENCES devotees (devotee_id),
    CONSTRAINT fk_experiences_trustee FOREIGN KEY (temple_trustee_id) REFERENCES temple_trustees (temple_trustee_id),
    CONSTRAINT fk_experiences_resp_type FOREIGN KEY (response_type_id) REFERENCES response_types (response_type_id),
    CONSTRAINT fk_experiences_status FOREIGN KEY (status_id) REFERENCES status (status_id)
);

create table donations 
(
    donation_id int PRIMARY KEY auto_increment,
    amount int not null,
    temple_trustee_id int,
    devotee_id int not null,
    donation_date DATETIME not null,
    CONSTRAINT fk_donations_temp_trustee FOREIGN KEY (temple_trustee_id) REFERENCES temple_trustees (temple_trustee_id),
    CONSTRAINT fk_donations_devotee FOREIGN KEY (devotee_id) REFERENCES devotees (devotee_id)
);

create table prasad_bookings
(
    prasad_booking_id int PRIMARY KEY auto_increment,
    devotee_id int not null,
    prasad_id int not null,
    booking_date DATE not null,
    quantity int not null,
    rate int not null,
    status_id int,
    CONSTRAINT fk_prasad_bookings_dev FOREIGN KEY (devotee_id) REFERENCES devotees (devotee_id),
    CONSTRAINT fk_prasad_bookings_prasads FOREIGN KEY (prasad_id) REFERENCES prasads (prasad_id),
    CONSTRAINT fk_prasad_bookings_status FOREIGN KEY (status_id) REFERENCES status (status_id)
);

create table poojas 
(
    pooja_id int PRIMARY KEY auto_increment,
    name char(50) not null,
    pooja_time varchar(100) not null,
    frequency VARCHAR(100) not null,
    persons int not null,
    duration int not null,
    description varchar(1000) not null,
    amount int not null,
    temple_trustee_id int not null,
    prasad_id int not null,
    CONSTRAINT fk_poojas_temp_trustee FOREIGN KEY (temple_trustee_id) REFERENCES temple_trustees (temple_trustee_id),
    CONSTRAINT fk_poojas_prasads FOREIGN KEY (prasad_id) REFERENCES prasads (prasad_id)
);

create table pooja_bookings
(
    pooja_booking_id int PRIMARY KEY auto_increment,
    devotee_id int not null,
    pooja_id int not null,
    amount int not null,
    booking_date DATETIME not null,
    schedule DATETIME not null,
    status_id int not null,
    CONSTRAINT fk_pooja_book_devotee FOREIGN KEY (devotee_id) REFERENCES devotees (devotee_id),
    CONSTRAINT fk_pooja_book_pooja FOREIGN KEY (pooja_id) REFERENCES poojas (pooja_id),
    CONSTRAINT fk_pooja_book_status FOREIGN KEY (status_id) REFERENCES status (status_id)
);


-- ALTER table prasads drop FOREIGN key fk_prasads_temp_trustee;

alter table temple_trustees add column live_darshan_link varchar(255);