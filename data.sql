insert into deities (name) VALUES 
('Ganesh Ji'),('Bholenath'),('Shri Ram'),('Krishna Ji'),('Hanuman Ji');

insert into status (status) VALUES
('ACTIVE'),('INACTIVE'),('BLOCKED');

insert into admin (name, email, password, phone) 
VALUE
('Atul', 'atulraftaar09@gmail.com', '123456', '8889305240');

select tt.city_id, tt.deity_id, ct.state_id, ct.city, dt.name, st.state  from temple_trustees as tt 
inner join cities as ct inner join deities as dt 
inner join states as st where tt.city_id = ct.city_id and 
tt.deity_id = dt.deity_id and ct.state_id = st.state_id and tt.status_id=2;

-- All data of temple_trustee in single line

select temple_trustee_id, trustee_name, temple_name, email,
website, tt.address, tt.description, tt.city_id, tt.deity_id, 
ct.state_id, ct.city, dt.name, st.state status_id, user_type from temple_trustees as tt 
inner join cities as ct inner join deities as dt 
inner join states as st where tt.city_id = ct.city_id and 
tt.deity_id = dt.deity_id and ct.state_id = st.state_id and tt.status_id = 1 and email = 'rishu444@gmail.com';


select temple_trustee_id, trustee_name, temple_name, email, website,"+
                                "tt.address, tt.description, tt.city_id, tt.deity_id, ct.state_id, "+
                                    "ct.city, dt.name, st.state, status_id, user_type from temple_trustees as tt inner join "+
                                        "cities as ct inner join deities as dt inner join states as st where "+ 
                                            "tt.city_id = ct.city_id and tt.deity_id = dt.deity_id and ct.state_id"+
                                                "= st.state_id;

        
-- All data of temple_trustee in single line

select tt.deity_id , dt.name from temple_trustees as tt inner join deities as dt on tt.deity_id = dt.deity_id
where dt.deity_id=3;

select po.pooja_id, po.name, pooja_time, frequency, persons, duration, description, amount, po.prasad_id, pr.name , quantity, price from poojas as po inner join prasads as pr 
WHERE po.prasad_id = pr.prasad_id and po.temple_trustee_id = 13;