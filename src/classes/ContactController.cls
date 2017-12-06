public class ContactController 
{
	@AuraEnabled
    public static List<Contact> getContacts()
    {
        return [Select Id, Name, MailingStreet, Phone, Email, gangdev__Level__c From Contact];
    }
    
    @AuraEnabled
    public static List<Contact> getPrimary()
    {
        return [Select Id, Name, MailingStreet, Phone, Email, gangdev__level__c From Contact 
               Where gangdev__level__c = 'Primary'];
    }
}