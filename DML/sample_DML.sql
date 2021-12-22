
set serveroutput on;

begin
    --INSERT CUSTOMER
    -- customer_id, first_name, last_name, email, contact, license, passport,cust type, DOB
    --pckg_customer.insert_customer(786,'Ganesh','Nayak','ganesh.n@northeastern.edu',3456987098,'ZXCVB542','LKJHGMN678','EMPLOYEE','02-JUL-1997');
    
    
    --CUSTOMER ADDRESS
    -- address id, line1, line2, state, city, cust_id, zip, addr type
    --pckg_customer.insert_customer_address(50,'GERMAN COLONY',NULL,'TEXAS','DALLAS',786,'34561','HOME');
    
    
    --UPDATE CUSTOMER
    --pckg_customer.update_customers(786,'Ganesh','Nayak','ganesh.n@gmail.com','3456987098','ZXCVB542','LKJHGMN678','EMPLOYEE','02-JUL-1997');
    
    
    --UPADTE ADDRESS
    --pckg_customer.update_customer_address(50,'HENNY PARK VIEW','APT NO 34','TEXAS','DALLAS',786,'34579','HOME');
    
    
    --INSERT ACTIVITY activity id, login time, logout time, cust id
      --pckg_customer.insert_activity(12000, sysdate, sysdate+1/24, 786);
    
    
    --INSERT CAR car id, type, seat capacity, rate, model, make,reg num, cost
        --pckg_car.insert_car(500, 'SEDAN', 4, 16, 'CITY', 'HONDA','QQR D78', 16000);
        
        
    --UPDATE CAR
        --pckg_car.update_car(500, 'SEDAN', 4, 17, 'CITY', 'HONDA','QQR D78', 15500);
        
         
    --INSERT PICKUP POINT pickup point id, state, city, zip, cost, name
        --pckg_car.insert_pickup_point(10, 'TEXAS','AUSTIN','92115', 50000, 'AUSTIN_A1');
    
    
    --UPDATE PICKUP POINT
        --pckg_car.update_pickup_point(10, 'TEXAS','AUSTIN','92220', 50000, 'AUSTIN_TX');
    
    
    --INSERT CARS AT PICK UP 
        --pckg_car.insert_cars_at_pickup(15,10,500);
             
               
    -- DELETE CAR
        --pckg_car.insert_car(600, 'SEDAN', 4, 16, 'CITY', 'HONDA','QQZ D21', 15800);
        --pckg_car.delete_car(600);
        
    

    
    --INSERT violations- violation id description
        --pckg_violations.insert_violations(22,'Traffic Signal Jump');
        --pckg_violations.update_violations(22,'Signal Jump');
    
    --INSERT VIOLATIONS records - record id,  cust id, violation id
      --pckg_violations.insert_violations_record(2000,786,22);
        
    --SHOW ALL AVAILABLE CARS - start time, end time    
        --pckg_utils.show_all_available_cars(to_timestamp((sysdate)), to_timestamp((sysdate+2/24)));
    
    --GET CAR - car id
        --pckg_utils.get_car(500);
    
    --INSERT RIDE Transaction -  Trans id, cust id, car at pickup id, start, end, car id, distance, status
        --pckg_transact.insert_ride_transaction(17, 786, 15, to_timestamp((sysdate)), to_timestamp((sysdate+2/24)),500, 0, 'IN PROCESS');
    
    --UPDATE  Ride Transaction- Trans id, car at pickup id, start, end, car id, distance, status, customer card, discount id
       --pckg_transact.update_ride_transaction(17, 15, to_timestamp((sysdate+1/24)), to_timestamp((sysdate+2/24)), 500, 0,'UPDATED',NULL, NULL);
       
    --COMPLETE RIDE TRANSACTION- Trans id, car at pickup id, start, end, car id, distance, status, customer card, discount id
       --pckg_transact.update_ride_transaction(17, 15, to_timestamp((sysdate+1/24)), to_timestamp((sysdate+2/24)), 500, 26,'COMPLETED','1234-1234-1234-1234',NULL);
    
end;




/*
begin
        ---TEST CASES FOR FALSE INPUTS
    --pckg_customer.insert_customer(786,'Beemla','Nayak','ganesh.nnortheastern.edu',3456987098,'ZXCVB542','LKJHGMN678','EMPLOYEE','02-JUL-1997');
    --pckg_customer.insert_customer(7861,'Beemla','Nayak','ganesh.n@northeastern.edu',3456887098,'ZXCVB542','LKJHGMN678','EMPLOYEE','02-JUL-1997');
    
    --pckg_car.insert_car(1052, 'SEDAN', 4, 16, 'CITY', 'HONDA','QQR D78', 15800);
end;*/