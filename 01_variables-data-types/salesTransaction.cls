public class salesTransaction{

    string customerName;
    Integer itemPurchased;
    Decimal pricePerItem;
    Decimal discountPercentage;
    Boolean isCustomerPremium;


    // constructor to inititalise values of all customer objects
    public salesTransaction(String customerName, Integer itemPurchased, Decimal pricePerItem, Decimal discountPercentage, Boolean isCustomerPremium){
        this.customerName = customerName;
        this.itemPurchased = itemPurchased;
        this.pricePerItem = pricePerItem;
        this.discountPercentage = discountPercentage;
        this.isCustomerPremium = isCustomerPremium;
    }

    public static void calculateBilling(){

        if(itemPurchased <=0 || pricePerItem <= 0){
            System.debug('Invalid Input');
            return;
        }

        Decimal calculatedPrice  = pricePerItem * itemPurchased;
        Decimal discount =  calculatedPrice * (discountPercentage / 100);
        Decimal totalPrice = calculatedPrice - discount;

        if(isCustomerPremium){
            System.debug('Final Payable Amount => ' + totalPrice);
        }else{
            System.debug('Final Payable Amount => ' + calculatedPrice);
        }
    }
}