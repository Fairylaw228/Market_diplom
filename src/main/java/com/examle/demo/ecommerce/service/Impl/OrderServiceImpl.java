package com.examle.demo.ecommerce.service.Impl;

import com.examle.demo.ecommerce.domain.Order;
import com.examle.demo.ecommerce.domain.User;
import com.examle.demo.ecommerce.repos.OrderRepository;
import com.examle.demo.ecommerce.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class OrderServiceImpl implements OrderService {

    private final OrderRepository orderRepository;

    @Autowired
    public OrderServiceImpl(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }


    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }


    @Override
    public Order save(Order order) {
        return orderRepository.save(order);
    }


    @Override
    public List<Order> findOrderByUser(User user) {
        return orderRepository.findOrderByUser(user);
    }
}
