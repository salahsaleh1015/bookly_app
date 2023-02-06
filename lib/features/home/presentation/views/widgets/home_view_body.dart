import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_featured_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppBar(),
        Container(
          height: MediaQuery.of(context).size.height*.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context , index){
                return const HomeFeaturedItem();
              },
             ),
        ),
      ],
    ));
  }
}
