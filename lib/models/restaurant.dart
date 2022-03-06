

import 'package:food_delivery_app/models/food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String lavel;
  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>>menu;
  Restaurant(this.name,
      this.waitTime,
      this.distance,
      this.lavel,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu);
  static Restaurant generateResturant(){
    return Restaurant('Restaurant', '20-30 min', '2.4 km', 'Restaurant', 'assets/images/res_logo.png', 'Orange Sandwiches is delicious', 4.7,
    {
      'Recommend': Food.generateRecommendFood(),
      'popular': Food.generatePopularFood(),
      'Noodles':[],
      'Pizza':[],
    },);
  }

}


