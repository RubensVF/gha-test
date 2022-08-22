package com.ruben.velazquez.ecomnerece.ecommerceapi.controller;

import java.util.Arrays;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("ecommerce-api/v0/products")
public class ProductsController {
    

    @GetMapping("/")
    public List<String> getAll(){
        return Arrays.asList("uno","dos","tres","cuatro","cinco","seis");
    }
}
