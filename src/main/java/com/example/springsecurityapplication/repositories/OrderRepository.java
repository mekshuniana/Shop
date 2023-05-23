package com.example.springsecurityapplication.repositories;

import com.example.springsecurityapplication.models.Order;
import com.example.springsecurityapplication.models.Person;
import com.example.springsecurityapplication.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
    List<Order> findByPerson (Person person);
    // Поиск заказа по последним 4 символам в номере заказа
    // lower = приводим в нижний регистр,
    //?1 - указывает, что это первый параметр нашего метода (String number);
    //Маски: '%?1' - означает, что number ищем в конце строки
    //NativeQuery = true включает методы с применением SQL
    @Query(value = "select * from orders where number like %?1", nativeQuery = true)
    List<Order> findOrderByPartOfNumber(String number);

}
