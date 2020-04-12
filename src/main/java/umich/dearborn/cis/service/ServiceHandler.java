package umich.dearborn.cis.service;

import org.springframework.stereotype.Service;
import umich.dearborn.cis.entity.User;
import umich.dearborn.cis.repository.UsersRepo;

import java.util.List;

@Service
public class ServiceHandler {

    private UsersRepo usersRepo;

    public ServiceHandler(UsersRepo usersRepo){
        this.usersRepo = usersRepo;
    }

    public User getUser(String username){
        return this.usersRepo.findByUsername(username);
    }

    public List<User> getAllUsers(){
        return (List<User>) this.usersRepo.findAll();
    }
}
