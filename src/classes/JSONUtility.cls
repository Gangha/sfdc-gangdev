public class JSONUtility
{
	public class Company
	{
		public String farmer_company;
		public Decimal loan_amount;
		public Integer loan_term;
		public Integer loan_reason;
		public String additional_info;
		public List<PaymentInfo> paymentInfoList;
	}

	public class PaymentInfo
	{
		public String order_number;
		public Decimal payment_amount;
		public List<String> cardInfoList;
	}

	public class CardInfo
	{
		public String cardholder_name;
		public String card_number;
		public String expiry_month;
		public String expiry_year;
		public String cvd;
	}
    
    /*
        How to call this JSON class
        String jsonString = '{"farmer_company" : "Mr. Fred the Farmer", "loan_amount" : 50000.00, "loan_term" : 24, "loan_reason" : 2, "additional_info" : "Bla bla bla", "payment_info" : {"order_number" : "2020007","payment_amount" : 65.00,"card_info" : {"cardholder_name" : "Farmer Fred","card_number" : "4030000010001234","expiry_month" : "02","expiry_year" : "20","cvd" : "123"}}}';
		JSONUtility.Company c = new JSONUtility.Company();
		c = (JSONUtility.Company)JSON.deserialize(jsonString, JSONUtility.Company.class);
		system.debug('company details '+c);
     */

}