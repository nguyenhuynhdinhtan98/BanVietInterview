import 'package:flutter/material.dart';
import 'package:ban_viet_interview/theme/circle_progress.dart';
import '../theme/color.dart';

class InforCard extends StatefulWidget {
  const InforCard({Key? key}) : super(key: key);

  @override
  State<InforCard> createState() => _InforCard();
}

class _InforCard extends State<InforCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      child: Column(
        children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      child: Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 6),
                                  child: Text("VISA * 0002",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text("JCB * 0002",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          color: outlineBlue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.white,
                          size: 35,
                        )),
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Divider(
              height: 0.5,
              color: secondary,
            ),
          ),
          Container(
            color: primary,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("Hạn mức thẻ tín dụng còn lại",
                                    style: TextStyle(
                                        color: grey,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("200.000 VND",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomPaint(
                      foregroundPainter: CircleProgress(70),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        child: Text("70%",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
