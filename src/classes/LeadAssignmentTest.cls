@isTest
private class LeadAssignmentTest 
{
	@isTest 
	private static void testLeadAssignment()
	{
		//data generation
		Account a1 = TestFactory.createAccount('abc', '1500 Haro', '5879692091');
		Account a2 = TestFactory.createAccount('bcd', '1500 Haro', '5879692091');

		Lead l1 = TestFactory.createLead('test 1', 'test 1', 'abc@example.com');

		insert a1;

		/*User u1 = TestFactory.createUser('abc');
		insert u1;


		//test execution
		Test.startTest();


		Leadassignmetn.createTest();		

		insert l1;

		insert l2;

		insert l3;


		System.assertEquals();



		System.assertEquals(u1.Id, l1.ownerId);*/


		//Test.stopTest();



	}
}