package umich.dearborn.cis.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import umich.dearborn.cis.AjaxResponseBody;
import umich.dearborn.cis.PublisherInfo;
import umich.dearborn.cis.entity.User;
import umich.dearborn.cis.repository.UsersRepo;
import umich.dearborn.cis.service.ServiceHandler;

import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DealerController {

    private ServiceHandler service;

    public DealerController(ServiceHandler service){
        this.service = service;

    }
    @RequestMapping("/main")
    public String sudentAccount() throws IOException {
        return "main";
    }

    @RequestMapping("/admin")
    public String sudentAccountPayment() throws IOException {

        return "admin";
    }

    @RequestMapping("/login")
    public String login() throws IOException {
        return "login";
    }



    @PostMapping("/api/add")
    public ResponseEntity<?> addVehicle(@Valid @RequestBody User user, Errors errors) throws Exception {
        List<User> usersList = this.service.getAllUsers();
        AjaxResponseBody result = new AjaxResponseBody();
        System.out.println("*******************************");
        System.out.println("User data "+ user.toString());
        System.out.println("User data from LIST"+ usersList.toString());
        System.out.println("*******************************");
        result.setMsg("success");
        return ResponseEntity.ok(usersList);
    }

    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody User user, Errors errors) throws Exception {
        List<User> usersList = this.service.getAllUsers();
        AjaxResponseBody result = new AjaxResponseBody();
        System.out.println("*******************************");
        System.out.println("User data "+ user.toString());
        System.out.println("User data from LIST"+ usersList.toString());
        System.out.println("*******************************");
        result.setMsg("success");
        return ResponseEntity.ok(usersList);
    }

    @PostMapping("/login/info")
    public ResponseEntity<?> getloginInfo(@Valid @RequestBody User user, Errors errors) throws Exception {
        System.out.println("*******************************");
        System.out.println("User data "+ user.toString());
        System.out.println("User data from reposiroty"+ this.service.getUser(user.username));
        System.out.println("*******************************");
        user =this.service.getUser(user.username);
        AjaxResponseBody result = new AjaxResponseBody();
        result.setMsg("success");
        return ResponseEntity.ok(user);
    }
}
