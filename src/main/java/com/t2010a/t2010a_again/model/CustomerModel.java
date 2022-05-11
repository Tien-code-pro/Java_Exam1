package com.t2010a.t2010a_again.model;

import com.t2010a.t2010a_again.entity.Customer;

import java.util.List;

public interface CustomerModel {
    Customer save(Customer customer);

    List<Customer> findAll();

    Customer findById(String id);

    Customer update(String id, Customer updateCustomer);

    boolean delete(String id);
}
