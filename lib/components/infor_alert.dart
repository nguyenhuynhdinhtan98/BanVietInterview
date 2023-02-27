import 'package:flutter/material.dart';
import '../theme/color.dart';

class InforAlert extends StatefulWidget {
  Function onHideAlertWidget;

  InforAlert(this.onHideAlertWidget);

  @override
  State<InforAlert> createState() => _InforAlertState();
}

class _InforAlertState extends State<InforAlert> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Flexible(
                        child: Text("Hoá đơn học phí tháng 2/2023",
                            style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Icon(
                          Icons.clear,
                          size: 36,
                          color: grey,
                        ),
                        onPressed: () =>  widget.onHideAlertWidget(),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        child: Text("900.000 VND",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Flexible(
                        child: Text("Thanh toán ngay",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        )
    );
  }
}
