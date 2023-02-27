import 'package:flutter/material.dart';
import '../theme/color.dart';
import 'package:ban_viet_interview/model/MainFeatureItemData.dart';

class MainFeature extends StatefulWidget {
  const MainFeature({Key? key}) : super(key: key);

  @override
  State<MainFeature> createState() => _MainFeatureState();
}

class _MainFeatureState extends State<MainFeature> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Thanh toán và chuyển tiền",
                style: TextStyle(
                    color: white, fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: features.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16.0,
                    ),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return getItemFeature(features[index]);
                    }),
              )
            ],
          ),
        ));
  }

  Widget getItemFeature(RowMainFeature feature) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            feature.icon,
            color: Colors.white,
            size: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              feature.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
