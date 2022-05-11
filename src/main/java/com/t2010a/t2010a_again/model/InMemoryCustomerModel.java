package com.t2010a.t2010a_again.model;

import com.t2010a.t2010a_again.entity.Customer;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class InMemoryCustomerModel implements CustomerModel{
    private static List<Customer> customers;

    public InMemoryCustomerModel() {
        customers = new ArrayList<>();

        customers.add(
                new Customer(
                        "A01",
                        "so1",
                        "0123456",
                        "so1.png",
                        LocalDateTime.of(2022,11,5,10,10),
                        LocalDateTime.now(),
                        LocalDateTime.now(),
                        1)
        );
        customers.add(
                new Customer(
                        "A02",
                        "so2",
                        "012345678",
                        "so2.png",
                        LocalDateTime.of(2021,11,5,10,10),
                        LocalDateTime.now(),
                        LocalDateTime.now(),
                        1)
        );
        customers.add(
                new Customer(
                        "A03",
                        "so3",
                        "0123456789",
                        "so3.png",
                        LocalDateTime.of(2020,11,5,10,10),
                        LocalDateTime.now(),
                        LocalDateTime.now(),
                        1)
        );
    }

    @Override
    public Customer save(Customer customer) {
        customers.add(customer);
        return customer;
    }

    @Override
    public List<Customer> findAll() {
        return customers;
    }

    @Override
    public Customer findById(String id) {
        Customer foundCustomer = null;
        for (Customer customer :
            customers){
            if (customer.getId().equals(id)){
                foundCustomer = customer;
                break;
            }
        }
        return foundCustomer;
    }

    @Override
    public Customer update(String id, Customer updateCustomer) {
        Customer existingCustomer = findById(id);
        if (existingCustomer == null){
            return null;
        }
        existingCustomer.setName(updateCustomer.getName());
        existingCustomer.setPhone(updateCustomer.getPhone());
        existingCustomer.setImage(updateCustomer.getImage());
        existingCustomer.setDob(updateCustomer.getDob());
        existingCustomer.setUpdatedAt(LocalDateTime.now());
        existingCustomer.setStatus(updateCustomer.getStatus());
        return existingCustomer;
    }

    @Override
    public boolean delete(String id) {
        int foundIndex = -1;
        for (int i = 0;i < customers.size();i++){
            if (customers.get(i).getId().equals(id)){
                foundIndex = i;
            }
        }
        if (foundIndex != -1){
            customers.remove(foundIndex);
            return true;
        }
        return false;
    }
}
