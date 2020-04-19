package umich.dearborn.cis.model;

public class Vehicle {

    public String price;
    public String status;
    public String year;
    public String maker;
    public String color;
    public String model;
    public String mileage;
    public String image;
    public int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



    public Vehicle() {

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

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
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
                ", millage='" + mileage + '\'' +
                ", image='" + image + '\'' +
                ", id=" + id +
                '}';
    }
}
