class CabRide {

    String carName;
    String driveName;
    String pickLocation;
    String dropLocation;
    int noPassengers;
    double runKM;
    double cabFare;

    
    static double pricePerKM = 25.5;

    
    public CabRide(String carName, String driveName) {
            //car1
        this.carName = carName;
        this.driveName = driveName;
    }

    
    public void setPickLocation(String pickLocation) {
        this.pickLocation = pickLocation;
    }
    public void setDropLocation(String dropLocation) {
        this.dropLocation = dropLocation;
    }
    public void setNoPassengers(int noPassengers) {
        this.noPassengers = noPassengers;
    }
    public void setRunKM(double runKM) {
        this.runKM = runKM;
    }
    public void setCabFare(double cabFare) {
        this.cabFare = cabFare;
    }

    
    public String getCarName() {
        return carName;
    }
    public String getDriveName() {
        return driveName;
    }
    public String getPickLocation() {
        return pickLocation;
    }
    public String getDropLocation() {
        return dropLocation;
    }
    public int getNoPassengers() {
        return noPassengers;
    }
    public double getRunKM() {
        return runKM;
    }
    public double getCabFare() {
        return cabFare;
    }

    
    public void displayRideDetails() {
        System.out.println("-- Ride Details --");
        System.out.println("******************");
        System.out.println("Car Name : " + getCarName());
        System.out.println("Driver Name : " + getDriveName());
        System.out.println("Pickup Location : " + getPickLocation());
        System.out.println("Drop Location : " + getDropLocation());
        System.out.println("No of passengers : " + getNoPassengers());
        System.out.println();
        System.out.println("Kilometers of the ride : " + getRunKM());
        System.out.println("Total Fare of the ride : Rs." + getCabFare());
        System.out.println();
        System.out.println("-- Thank you --");
    }

    
    static double calculateCabFare(double runKM) {
        double finalFare;
        finalFare = runKM * pricePerKM;
        return finalFare;
    }
}

public class CabDetails {
    public static void main(String args[]) {
            //journey
        CabRide car = new CabRide("Toyota Prius", "John");
        car.setDropLocation("Nawala");
        car.setNoPassengers(2);
        car.setPickLocation("Dehiwala");
        car.setRunKM(11);
        double runKM = car.getRunKM();
        double cabFare = CabRide.calculateCabFare(runKM);
        car.setCabFare(cabFare);

        car.displayRideDetails();
    }
}