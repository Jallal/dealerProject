package umich.dearborn.cis.service;

import org.springframework.stereotype.Service;
import umich.dearborn.cis.entity.UserEntity;
import umich.dearborn.cis.repository.UsersRepo;

import java.util.List;

@Service
public class UserHandler {

    private UsersRepo usersRepo;

    public UserHandler(UsersRepo usersRepo){
        this.usersRepo = usersRepo;
    }

    public UserEntity getUser(String username){
        return this.usersRepo.findByUsername(username);
    }

    public List<UserEntity> getAllUsers(){
        return (List<UserEntity>) this.usersRepo.findAll();
    }
}
