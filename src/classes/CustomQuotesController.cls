public class CustomQuotesController
{
public List<Quote> allQuotes {get;set;}
public Boolean hasResults {get;set;}
public Id quoteId {get;set;}

public CustomQuotesController()
{
//Sobject quote =  stdController.getRecord();
//quoteId = (Id) quote.get('Id');
String rowsString = ApexPages.currentPage().getParameters().get('rows');
if (rowsString == null || rowsString  =='')
{
rowsString = '10';
}

if (rowsString == 'All')
{
rowsString = '1000';
}

Integer  rows = Integer.valueOf(rowsString);

allQuotes = new List<Quote>([SELECT Opportunity.Account.Name, Opportunity.name,OpportunityId, Name, IsSyncing, Id, ExpirationDate, Discount, CreatedById From Quote q limit :rows]);
if (allQuotes.isEmpty())
hasResults = false;
else
hasResults = true;
}
}