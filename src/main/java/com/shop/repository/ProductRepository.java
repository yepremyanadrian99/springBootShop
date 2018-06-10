package com.shop.repository;

import com.shop.domain.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product,Integer> {

    int countByCategoryId(int category_id);
    List<Product> findByUserId(int id);
    List<Product> findByTop(int top);
}
