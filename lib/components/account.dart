import 'package:flutter/material.dart';
import 'package:ban_viet_interview/model/Account.dart';
import 'package:ban_viet_interview/widgets/account_item.dart';
import 'package:ban_viet_interview/theme/color.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account> {
  int _currentAccount = 0;
  bool _accountBalanceDisplay = false;

  final PageController _pageController = PageController(initialPage: 0);

  _onPageChanged(int index) {
    setState(() {
      _currentAccount = index;
    });
  }

  _onBlanceHide(bool status) {
    setState(() {
      _accountBalanceDisplay = status;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (int i = 0; i < accounts.length; i++)
                  if (i == _currentAccount)
                    DotIndicator(true)
                  else
                    DotIndicator(false)
              ],
            ),
          ),
         Container(
              height: 110,
              child: PageView.builder(
                itemCount: accounts.length,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) => AccountItem(accounts[index],_accountBalanceDisplay,_onBlanceHide),
              ),
          ),
        ],
      ),
    );
  }
}

class DotIndicator extends StatefulWidget {
  final bool isActive;

  DotIndicator(this.isActive);

  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        height: 2.5,
        width: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: widget.isActive ? outlineBlue : primary,
        ),
      ),
    );
  }
}
