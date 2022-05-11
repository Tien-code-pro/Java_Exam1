package com.t2010a.t2010a_again.entity;

import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

class CustomerTest {

    @Test
    void testCreateCustomer() {
        Customer customer =new Customer();
        customer.setId("B01");
        customer.setName("Minh");
        customer.setPhone("00001");
        customer.setImage("minh.png");
        customer.setDob(LocalDateTime.of(2022,11,5,11,11));
        customer.setCreatedAt(LocalDateTime.now());
        customer.setUpdatedAt(LocalDateTime.now());
        customer.setStatus(1);
        System.out.println(customer.toString());
    }
}