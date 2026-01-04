/*

You are given a List<OpportunityLineItem>.

👉 Write an Apex method that finds the Product2Id with the highest total Quantity sold.

*/


public class FindTop{

    public static Id findTopSellingProduct(List<OpportunityLineItem> OpportunityLineItemList){

        Integer maxQuantity = 0;
        Id maxId = null;

        if(OpportunityLineItemList == null || OpportunityLineItemList.isEmpty()){
            return null;
        }

        Map<Id, Integer> productMap = new Map<Id, Integer>();

        for(OpportunityLineItem opl : OpportunityLineItemList){
            if(opl.Product2Id == null){
                continue;
            }

            if(!productMap.containsKey(opl.Product2Id)){
                productMap.put(opl.Product2Id, opl.Quantity);
            }else{
                productMap.put(opl.Product2Id, productMap.get(opl.Product2Id) + opl.Quantity);
            }
        }

        for(Id oplId : productMap.keySet()){
            if(productMap.get(oplId) > maxQuantity){
                maxQuantity = productMap.get(oplId);
                maxId = oplId;
            }
        }

        return maxId;
    }
}