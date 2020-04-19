package umich.dearborn.cis.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import umich.dearborn.cis.AjaxResponseBody;
import umich.dearborn.cis.SearchCriteria;
import umich.dearborn.cis.delegate.UserDelegate;
import umich.dearborn.cis.delegate.VehicleDelegate;
import umich.dearborn.cis.entity.UserEntity;
import umich.dearborn.cis.model.User;
import umich.dearborn.cis.model.Vehicle;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
public class DealerController {

    private UserDelegate service;
    private VehicleDelegate vehicleDelegate;

    public DealerController(UserDelegate service, VehicleDelegate vehicleDelegate) {
        this.service = service;
        this.vehicleDelegate = vehicleDelegate;

    }

    @RequestMapping("/home")
    public String sudentAccount() {
        return "home";
    }

    @GetMapping("/admin")
    public String sudentAccountPayment() {
        return "admin";
    }


    @RequestMapping("/invalidate/session")
    public String destroySession() {
        return "redirect:/home";
    }


    @RequestMapping("/login")
    public String login() {

        return "login";
    }


    @PostMapping("/api/add")
    public ResponseEntity<?> addVehicle(@Valid @RequestBody Vehicle vehicle, Errors errors) throws Exception {
        AjaxResponseBody result = new AjaxResponseBody();
        System.out.println("*******************************");
        System.out.println("Vehicle data " + vehicle.toString());
        System.out.println("*******************************");
        this.vehicleDelegate.addVehicleToInventory(vehicle);
        result.setMsg("success");
        return ResponseEntity.ok(vehicle);
    }

    @PostMapping("/api/search")
    public ResponseEntity<?> getSearchResultViaAjax(@Valid @RequestBody SearchCriteria search, Errors errors) throws Exception {
        List<Vehicle> vehicles = this.vehicleDelegate.getAllInventory();
        AjaxResponseBody result = new AjaxResponseBody();
        System.out.println("*******************************");
        System.out.println("Search data " + search.toString());
        System.out.println("*******************************");
        result.setMsg("success");
        return ResponseEntity.ok(vehicles);
    }

    @PostMapping("/login/info")
    public ResponseEntity<?> getloginInfo(@Valid @RequestBody User user) throws Exception {
        Optional<UserEntity> entity = this.service.getUser(user.username);
        AjaxResponseBody result = new AjaxResponseBody();
        if (!entity.isPresent()) {
            user.setRole("user");
        } else {
            user.setRole(entity.get().getRole());
        }
        result.setMsg("success");
        return ResponseEntity.ok(user);
    }
}
