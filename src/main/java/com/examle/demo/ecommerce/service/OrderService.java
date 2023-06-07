package com.examle.demo.ecommerce.service;

import com.examle.demo.ecommerce.domain.User;
import com.examle.demo.ecommerce.domain.Order;

import java.util.List;


public interface OrderService {

    List<Order> findAll();

    Order save(Order order);

    List<Order> findOrderByUser(User user);
}
