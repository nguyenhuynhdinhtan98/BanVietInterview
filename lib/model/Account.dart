
class AccountData {
  final String typeName,  currencyCode , balances  ,numberAccount;

  AccountData(this.typeName,this.numberAccount,this.balances, this.currencyCode );
}

List<AccountData> accounts = [
  AccountData("Tài khoản tiết kiệm","123.456.789", "200.000", "VND"),
  AccountData("Tài khoản thanh toán","123.456.789", "200.000", "VND"),
  AccountData("Tài khoản tiết kiệm","123.456.789", "200.000", "VND"),
  AccountData("Tài khoản vãng lai","123.456.789", "500.000", "VND"),
  AccountData("Tài khoản vãng lai","123.456.789", "500.000", "VND"),
  AccountData("Tài khoản vãng lai","123.456.789", "500.000", "VND"),

];