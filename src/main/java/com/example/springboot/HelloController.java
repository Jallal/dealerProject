package com.example.springboot;

import com.opencsv.CSVReader;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HelloController {
    public List<com.example.springboot.PublisherInfo> data = new ArrayList<>();



    @RequestMapping("/admin")
    public String sudentAccount() throws IOException {
        return "account";
    }

    @RequestMapping("/user")
    public String sudentAccountPayment() throws IOException {

        return "payment";
    }

    @RequestMapping("/login")
    public String login() throws IOException {
        return "login";
    }

    @PostMapping("/login/info")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody com.example.springboot.User user, Errors errors) throws Exception {
        System.out.println("*******************************");
        System.out.println("User data "+ user.toString());
        System.out.println("*******************************");
        AjaxResponseBody result = new AjaxResponseBody();
        result.setMsg("success");
        return ResponseEntity.ok(user);
    }
}
