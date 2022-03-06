import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

import 'package:food_delivery_app/screens/home/widget/food_list.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app/screens/home/widget/restaurant_info.dart';

import 'package:food_delivery_app/widgets/custom_app_bar.dart';


import '../../models/restaurant.dart';



class HomePage extends StatefulWidget{


  @override
 HomePageState createState() => HomePageState();

  }


class HomePageState extends State<HomePage>{
  var selected =0;
  final pageController=PageController();
  final restaurant = Restaurant.generateResturant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       CustomAppBar(
          Icons.arrow_back_ios_outlined,
        Icons.search_outlined,
      ),
          RestaurantInfo(),
        FoodList(selected,
                (int index)  {

            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
            }, restaurant),

          Expanded(
            child: FoodListView(
              selected,
                (int index){
                setState(() {
                  selected= index;
                });
                },
              pageController,
              restaurant,

            ),
          ),



          




        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: kPrimarycolor,
        elevation: 2,
        child: const Icon(Icons.shopping_bag_outlined,
        color: Colors.black,
        size: 30),
      ),
    );
    throw UnimplementedError();
  }

}