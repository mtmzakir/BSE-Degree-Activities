public class ProDetails {

    public static void main(String[] args) {

        LedTV tv = new LedTV();
        tv.setProductDetails("TV-246", "LG 4K Smart TV", 980000, "LG", "OLED");
        tv.printProductDetails();

        MobilePhone mobilePhone = new MobilePhone();
        mobilePhone.setProductDetails("MOB-252", "OnePlus Nord 10 5G", 68000, 8 , "OxygenOS", 128);
        mobilePhone.printProductDetails();

    }
}

abstract class Product {
    protected String pID;
    protected String name;
    protected double price;

    public void setProductDetails(String pID, String name, double price) {
        this.pID = pID;
        this.name = name;
        this.price = price;
    }

    public void printProductDetails() {
        System.out.println("Product Details");
        System.out.println("***************");
        System.out.println("pID = " + pID);
        System.out.println("name = "  + name);
        System.out.println("price = " + "LKR " + price);
        System.out.println("\n");

    }
}

class MobilePhone extends Product {
    private int ram;
    private String os;
    private int sdCard;

    public void setProductDetails(String pID, String name, double price, int ram, String os, int sdCard) {
        this.pID = pID;
        this.name = name;
        this.price = price;
        this.ram = ram;
        this.os = os;
        this.sdCard = sdCard;
    }

    @Override
    public void printProductDetails() {
        System.out.println("Mobile Details");
        System.out.println("**************");
        System.out.println("pID = " + pID);
        System.out.println("name = " + name);
        System.out.println("price = " + "LKR " + price  );
        System.out.println("ram = " + ram + "GB");
        System.out.println("os = " + os);
        System.out.println("sdCard = " + sdCard + " GB");
        System.out.println("\n");

    }

}

class LedTV extends Product {
    private String brand;
    private String technology;

    public void setProductDetails(String pID, String name, double price, String brand, String technology) {
        this.pID = pID;
        this.name = name;
        this.price = price;
        this.brand = brand;
        this.technology = technology;
    }

    @Override
    public void printProductDetails() {
        System.out.println("TV Details");
        System.out.println("**********");
        System.out.println("pID = " + pID);
        System.out.println("name = " + name);
        System.out.println("price = " + "LKR " + price);
        System.out.println("brand = " + brand);
        System.out.println("technology = " + technology);
        System.out.println("\n");
    }
}