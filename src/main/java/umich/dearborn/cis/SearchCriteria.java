package umich.dearborn.cis;

public class SearchCriteria {

  public String condition;
  public String price;
    public String year;
    public String make;
    public String color;
    public String model;
    public String mileage;

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
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
        return "SearchCriteria{" +
                "condition='" + condition + '\'' +
                ", price='" + price + '\'' +
                ", year='" + year + '\'' +
                ", make='" + make + '\'' +
                ", color='" + color + '\'' +
                ", model='" + model + '\'' +
                ", mileage='" + mileage + '\'' +
                '}';
    }

}
