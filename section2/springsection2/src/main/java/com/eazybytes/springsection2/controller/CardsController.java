package com.eazybytes.springsection2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CardsController {
    @GetMapping("/myCards")
    public String getCardsDetails() {
        return "Get Card Details";
    }
}
