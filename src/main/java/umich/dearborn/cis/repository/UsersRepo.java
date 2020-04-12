package umich.dearborn.cis.repository;

import org.springframework.data.repository.CrudRepository;
import umich.dearborn.cis.entity.User;

import java.util.List;

public interface UsersRepo extends CrudRepository<User, Long> {

    User findByUsername(String lastName);
}
