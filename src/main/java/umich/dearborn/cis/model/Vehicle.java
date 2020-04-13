package umich.dearborn.cis.model;

import umich.dearborn.cis.entity.VehicleEntity;

public class Vehicle {

    public String price;
    public String status;
    public String year;
    public String maker;
    public String color;
    public String model;
    public String millage;
    public String image;

    public Vehicle() {

    }

    public Vehicle(VehicleEntity entity) {

        this.maker = entity.getMaker();
        this.model = entity.getModel();
        this.color = entity.getColor();
        this.millage = entity.getMillage();
        this.price = entity.getPrice();
        this.year = entity.getYear();
        this.status = entity.getStatus();
    }


    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getMillage() {
        return millage;
    }

    public void setMillage(String millage) {
        this.millage = millage;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "price='" + price + '\'' +
                ", status='" + status + '\'' +
                ", year='" + year + '\'' +
                ", maker='" + maker + '\'' +
                ", color='" + color + '\'' +
                ", model='" + model + '\'' +
                ", millage='" + millage + '\'' +
                '}';
    }
}
