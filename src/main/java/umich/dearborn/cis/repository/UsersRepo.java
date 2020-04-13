package umich.dearborn.cis.repository;

import org.springframework.data.repository.CrudRepository;
import umich.dearborn.cis.entity.UserEntity;

public interface UsersRepo extends CrudRepository<UserEntity, Long> {

    UserEntity findByUsername(String lastName);
}
