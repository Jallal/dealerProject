package umich.dearborn.cis.delegate;

import org.springframework.stereotype.Service;
import umich.dearborn.cis.entity.VehicleEntity;
import umich.dearborn.cis.model.Vehicle;
import umich.dearborn.cis.repository.VehicleRepo;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class VehicleDelegate {

    private VehicleRepo vehicleRepo;

    public VehicleDelegate(VehicleRepo vehicleRepo) {
        this.vehicleRepo = vehicleRepo;

    }

    public void addVehicleToInventory(Vehicle vehicle) {

        System.out.println("*******************************");
        System.out.println("Working with ID "+ vehicle.id);

        Optional<VehicleEntity> entity= this.vehicleRepo.findById(vehicle.id);

        if(!entity.isPresent()){
             entity = Optional.of(new VehicleEntity());
            System.out.println("I didn't fine the vehicle so creating a new one now ");
        }
        entity.get().setMaker(vehicle.getMaker());
        entity.get().setModel(vehicle.getModel());
        entity.get().setColor(vehicle.getColor());
        entity.get().setMillage(vehicle.getMileage());
        entity.get().setPrice(vehicle.getPrice());
        entity.get().setYear(vehicle.getYear());
        entity.get().setStatus(vehicle.getStatus());
        this.vehicleRepo.save(entity.get());
        System.out.println("*******************************");

    }

    public List<Vehicle> getAllInventory() {
        List<Vehicle> vehicles = new ArrayList<>();
        List<VehicleEntity> all = this.vehicleRepo.findAll();
        for (VehicleEntity entity : all) {
            Vehicle vehicle = this.getVehicle(entity);
            vehicles.add(vehicle);
        }
        return vehicles;
    }

    private Vehicle getVehicle(VehicleEntity entity) {

        Vehicle vehicle = new Vehicle();
        vehicle.setMaker(entity.getMaker());
        vehicle.setModel(entity.getModel());
        vehicle.setColor(entity.getColor());
        vehicle.setMileage(entity.getMillage());
        vehicle.setPrice(entity.getPrice());
        vehicle.setYear(entity.getYear());
        vehicle.setStatus(entity.getStatus());
        vehicle.setId(entity.getId());
        return  vehicle;
    }
}
