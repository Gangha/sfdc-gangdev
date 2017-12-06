public class ProductsController {

    public List<Product2> prodWOPB {get;set;}
    public String baseUrl {get;set;}
    
    public ProductsController()
    {
        productsWOPricebooks();
    }
    
    public void productsWOPricebooks(){
        
        baseUrl = System.Url.getSalesforceBaseUrl().toExternalForm();
        
        prodWOPB = new List<Product2>();
        Map<Id,Product2> prodMap = new Map<Id,Product2>([Select Id, Name, IsActive, ProductCode From Product2]);
        List<PriceBookEntry> pbeList = [Select Id, Product2Id, PriceBook2Id From PriceBookEntry Where Product2Id IN:prodMap.keySet()];
        
        for(PriceBookEntry pbe:pbeList)
        {
            prodMap.remove(pbe.product2Id);
        }  
        system.debug(prodMap.size()); 
        prodWOPB = prodMap.values();
    }
    
    
}