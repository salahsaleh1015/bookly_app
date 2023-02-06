import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
class HomeFeaturedItem extends StatelessWidget {
  const HomeFeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  const DecorationImage(image:  AssetImage(AssetsData.testOne))

      ),
    );
  }
}
