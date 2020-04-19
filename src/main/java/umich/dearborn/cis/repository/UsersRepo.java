package umich.dearborn.cis.repository;

import org.springframework.data.repository.CrudRepository;
import umich.dearborn.cis.entity.UserEntity;

import java.util.Optional;

public interface UsersRepo extends CrudRepository<UserEntity, Long> {

    Optional<UserEntity> findByUsername(String lastName);
}
