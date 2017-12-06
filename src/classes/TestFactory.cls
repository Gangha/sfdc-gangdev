public class TestFactory 
{
	public static Account createAccount(String name, String billingstreet, String phone)
	{
		Account a = new Account();
		a.name = name;
		a.billingstreet = billingstreet;
		a.phone = phone;
		return a;
	}

	public static Lead createLead(String name, String firstName, String email)
	{
		Lead l = new Lead();
		l.LastName = name;
		l.firstName = firstName;
		l.email = email;
		return l;
	}
}