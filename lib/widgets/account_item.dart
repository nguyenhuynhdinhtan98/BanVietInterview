import 'package:flutter/material.dart';
import 'package:ban_viet_interview/theme/color.dart';
import 'package:ban_viet_interview/model/Account.dart';
import 'package:flutter/services.dart';

class AccountItem extends StatefulWidget {
  final AccountData accountData;

  bool accountBalanceDisplay;

  Function(bool) onBlanceHide;

  AccountItem(this.accountData, this.accountBalanceDisplay, this.onBlanceHide);

  @override
  State<AccountItem> createState() => _AccountItemState();
}

class _AccountItemState extends State<AccountItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: primary,
          border: Border.all(color: outlineBlue),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.accountData.typeName,
                      style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Text(widget.accountData.numberAccount,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                      IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Clipboard.setData(ClipboardData(
                                    text: widget.accountData.numberAccount))
                                .then((_) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                    "Account number copied to clipboard ${widget.accountData.numberAccount}"),
                                backgroundColor: secondary,
                              ));
                            });
                          },
                          icon:
                              Icon(Icons.copy, size: 24, color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                        '${widget.accountBalanceDisplay ? widget.accountData.balances : "*******"}'
                        '   ${widget.accountData.currencyCode}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                  IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () =>
                          widget.onBlanceHide(!widget.accountBalanceDisplay),
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 26,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
