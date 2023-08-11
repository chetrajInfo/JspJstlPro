package com.example.springjspdemo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index(Model model) {
        // Set attribute for conditionally displaying the <h1> tag
        model.addAttribute("someCondition", true);

        // Set attributes for dynamic values for color and title
        model.addAttribute("colorValue", "green");
        model.addAttribute("pageTitle", "Dynamic Page Title");

        // Set attribute for user role
        // This can be fetched from a logged-in user's session or some other logic.
        // For simplicity, I'm hardcoding it here.
        model.addAttribute("role", "admin");

        // Set attribute for displaying Hello message
        model.addAttribute("name", "World");

        return "index"; // This refers to the index.jsp view
    }
}