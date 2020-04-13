package umich.dearborn.cis.repository;

import org.springframework.data.repository.CrudRepository;
import umich.dearborn.cis.entity.UserEntity;
import umich.dearborn.cis.entity.VehicleEntity;

import java.util.List;

public interface VehicleRepo  extends CrudRepository<VehicleEntity, Long> {
    List<VehicleEntity> findAll();
}
