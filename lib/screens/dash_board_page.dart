import 'package:ban_viet_interview/components/infor_alert.dart';
import 'package:ban_viet_interview/components/infor_card.dart';
import 'package:ban_viet_interview/components/main_feature.dart';
import 'package:flutter/material.dart';
import 'package:ban_viet_interview/model/User.dart';
import 'package:ban_viet_interview/theme/color.dart';
import 'package:ban_viet_interview/components/account.dart';
import 'package:ban_viet_interview/components/infor_card.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPage();
}

class _DashBoardPage extends State<DashBoardPage> {
   bool isVisibleAlertWidget = true;

   _onHideAlertWidget() {
     setState(() {
       isVisibleAlertWidget = false;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: getBody(),
    );
  }


   Widget getBody() {
     print(isVisibleAlertWidget);
     return ListView(
         children: [
           Account(),
           InforCard(),
           Visibility(
             visible: isVisibleAlertWidget,
             child: InforAlert(_onHideAlertWidget)
           ),
           MainFeature(),
         ]);
   }
  Widget getAppBar() {
    return AppBar(
      backgroundColor: primary,
      centerTitle: false,
      elevation: 0,
      title: Text("Xin chào ${users.firstName}"),
      actions: [IconButton( splashColor: Colors.transparent,
          highlightColor: Colors.transparent,  onPressed: () {}, icon: Icon(Icons.search_outlined,size: 26)),
        IconButton( splashColor: Colors.transparent,
            highlightColor: Colors.transparent,  onPressed: () {}, icon: Icon(Icons.wallet_giftcard_outlined,size: 26)),
        IconButton( splashColor: Colors.transparent,
            highlightColor: Colors.transparent,  onPressed: () {}, icon: Icon(Icons.notifications_outlined,size: 26))
      ],
    );
  }


}
