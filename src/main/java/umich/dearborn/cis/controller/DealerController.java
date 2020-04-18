package umich.dearborn.cis.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import umich.dearborn.cis.AjaxResponseBody;
import umich.dearborn.cis.SearchCriteria;
import umich.dearborn.cis.entity.UserEntity;
import umich.dearborn.cis.model.User;
import umich.dearborn.cis.model.Vehicle;
import umich.dearborn.cis.service.UserHandler;
import umich.dearborn.cis.service.VehicleHandler;

import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@Controller
public class DealerController {

    private UserHandler service;
    private VehicleHandler vehicleHandler;

    public DealerController(UserHandler service,VehicleHandler vehicleHandler){
        this.service = service;
        this.vehicleHandler=vehicleHandler;

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
    public ResponseEntity<?> addVehicle(@Valid @RequestBody Vehicle vehicle, Errors errors) throws Exception {
        AjaxResponseBody result = new AjaxResponseBody();
        System.out.println("*******************************");
        System.out.println("Vehicle data "+ vehicle.toString());
        System.out.println("*******************************");
        this.vehicleHandler.addVehicleToInventory(vehicle);
        result.setMsg("success");
        return ResponseEntity.ok(vehicle);
    }

    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody SearchCriteria search, Errors errors) throws Exception {
        List<Vehicle> vehicles = this.vehicleHandler.getAllInventory();
        AjaxResponseBody result = new AjaxResponseBody();
        System.out.println("*******************************");
        System.out.println("Search data "+search.toString());
        System.out.println("*******************************");
        result.setMsg("success");
        return ResponseEntity.ok(vehicles);
    }

    @PostMapping("/login/info")
    public ResponseEntity<?> getloginInfo(@Valid @RequestBody User user, Errors errors) throws Exception {
        System.out.println("*******************************");
        System.out.println("User data "+ user.toString());
        System.out.println("User data from reposiroty"+ this.service.getUser(user.username));
        System.out.println("*******************************");
        UserEntity entity = this.service.getUser(user.username);
        user.setRole(entity.getRole());
        AjaxResponseBody result = new AjaxResponseBody();
        result.setMsg("success");
        return ResponseEntity.ok(user);
    }
}
