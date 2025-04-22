package com.example.buysell.repositories;

import com.example.buysell.Models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.*;
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
}