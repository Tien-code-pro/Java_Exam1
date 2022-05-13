package com.t2010a.t2010a_again.model;

import com.t2010a.t2010a_again.entity.Customer;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class MySqlCustomerModelTest {

    CustomerModel model;
    @BeforeEach
    void setUp() {
        model = new MySqlCustomerModel();
    }

    @Test
    void save() {
        model.save(new Customer(
                "D01",
                "test02",
                "012345",
                "CD01.png",
                LocalDateTime.of(2022,12,12,12,12)
        )
        );
    }

    @Test
    void findAll() {
        List<Customer> list = model.findAll();
        for (Customer cs : list){
            System.out.println(cs.toString());;
        }
    }

    @Test
    void findById() {
        Customer customer = model.findById("A01");
        assertEquals("So01",customer.getName());
        Customer customer1 = model.findById("A01");
        assertEquals("So01",customer1.getName());
    }

    @Test
    void update() {
        Customer customer = model.findById("A01");
        customer.setName("updateName l33 :))");
        model.update("A01",customer);
        Customer newUpdateCustomer = model.findById("A01");
        assertEquals("updateName l33 :))",newUpdateCustomer.getName());
    }

    @Test
    void delete() {
        model.delete("5");
        Customer customer = model.findById("5");
        assertEquals(null,customer);
    }
}