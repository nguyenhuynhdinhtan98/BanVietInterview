import 'package:flutter/material.dart';

class UserData {
  final String firstName, lastName , currencyCode , balances ;

  UserData(this.firstName, this.lastName, this.currencyCode, this.balances);
}

UserData users = UserData("Nguyen", "Cong", "VND", "200000");