package umich.dearborn.cis.service;

import org.springframework.stereotype.Service;
import umich.dearborn.cis.entity.VehicleEntity;
import umich.dearborn.cis.model.Vehicle;
import umich.dearborn.cis.repository.VehicleRepo;

import java.util.ArrayList;
import java.util.List;

@Service
public class VehicleHandler {

    private VehicleRepo vehicleRepo;

    public VehicleHandler(VehicleRepo vehicleRepo) {
        this.vehicleRepo = vehicleRepo;

    }

    public void addVehicleToInventory(Vehicle vehicle) {

        VehicleEntity entity = new VehicleEntity();
        entity.setMaker(vehicle.getMaker());
        entity.setModel(vehicle.getModel());
        entity.setColor(vehicle.getColor());
        entity.setMillage(vehicle.getMillage());
        entity.setPrice(vehicle.getPrice());
        entity.setYear(vehicle.getYear());
        entity.setStatus(vehicle.getStatus());
        this.vehicleRepo.save(entity);

    }

    public List<Vehicle> getAllInventory() {
        List<Vehicle> vehicles = new ArrayList<>();
        List<VehicleEntity> all = this.vehicleRepo.findAll();
        for (VehicleEntity entity : all) {
            Vehicle vehicle = new Vehicle(entity);
            vehicles.add(vehicle);
        }
        return vehicles;
    }
}
