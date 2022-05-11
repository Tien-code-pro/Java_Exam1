package com.t2010a.t2010a_again.model;

import com.t2010a.t2010a_again.entity.Customer;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

class InMemoryCustomerModelTest {

    InMemoryCustomerModel model;

    @BeforeEach
    void setUp() {
        model = new InMemoryCustomerModel();
    }
    @Test
    void save() {
        System.out.println(model.findAll().size());
        Customer customer = new Customer(
                "C01",
                "test01",
                "012345",
                "C01.png",
                LocalDateTime.of(2022,11,11,11,11)
        );
        model.save(customer);
        System.out.println(model.findAll().size());
    }

    @Test
    void findAll() {
        System.out.println(model.findAll().size());
    }

    @Test
    void findById() {
        Customer customer = model.findById("A01");
        System.out.println(customer.toString());
    }

    @Test
    void update() {
        Customer customer = model.findById("A01");
        customer.setName("updateName :))");
        model.update("A01",customer);
        for (Customer cs: model.findAll()){
            System.out.println(cs.toString());
        }
    }

    @Test
    void delete() {
        model.delete("A01");
        for (Customer cs: model.findAll()){
            System.out.println(cs.toString());
        }
    }
}