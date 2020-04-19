package umich.dearborn.cis.delegate;

import org.springframework.stereotype.Service;
import umich.dearborn.cis.entity.UserEntity;
import umich.dearborn.cis.repository.UsersRepo;

import java.util.List;
import java.util.Optional;

@Service
public class UserDelegate {

    private UsersRepo usersRepo;

    public UserDelegate(UsersRepo usersRepo){
        this.usersRepo = usersRepo;
    }

    public Optional<UserEntity> getUser(String username){
        return this.usersRepo.findByUsername(username);
    }

    public List<UserEntity> getAllUsers(){
        return (List<UserEntity>) this.usersRepo.findAll();
    }
}
