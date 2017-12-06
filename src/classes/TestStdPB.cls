@isTest
public class TestStdPB {

    static testMethod void teststdpricebook()
    {
        
   Product2 prod = new Product2(Name = 'Laptop X200', 
            Family = 'Hardware');
        insert prod;
 Id pricebookId = Test.getStandardPricebookId();
        PricebookEntry standardPrice = new PricebookEntry(
            Pricebook2Id = pricebookId, Product2Id = prod.Id,
            UnitPrice = 10000, IsActive = true);
        insert standardPrice;
        
        system.debug('standard pb id '+Test.getStandardPricebookId());
    }
    
}