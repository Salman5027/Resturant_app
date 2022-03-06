class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String,String>>ingrediants;
  String about;
  bool highLight;
  Food (this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingrediants,
      this.about,
  {this.highLight= false}
      );

  static List<Food> generateRecommendFood(){
    return[
      // Number 1 - aitai cilo pothomay
      Food('assets/images/dish1.png', 'NO one in Sales', 'Soba Soup ', '50 min', 4.8, '325 Kcal', 12, 1,
          [
            {
              'Noodle' : 'assets/images/ingre1.png',
            },
            {
              'Shrimp' : 'assets/images/ingre2.png',
            },
            {
              'Egg' : 'assets/images/ingre3.png',
            },
            {
              'Scallion' : 'assets/images/ingre4.png',
            },

          ], 'Simply put , Ramen is a japanee soup food'),

// Number two - paste korayce
      Food('assets/images/dish2.png', 'NO one in Sales', 'Soba Soup ', '50 min', 4.8, '325 Kcal', 12, 1,
          [
            {
              'Noodle' : 'assets/images/ingre1.png',
            },
            {
              'Shrimp' : 'assets/images/ingre2.png',
            },
            {
              'Egg' : 'assets/images/ingre3.png',
            },
            {
              'Scallion' : 'assets/images/ingre4.png',
            },

          ], 'Simply put , Ramen is a japanee soup food'),

      // Number 3 - Aitao Paste Korayce

      Food('assets/images/dish3.png', 'NO one in Sales', 'Soba Soup ', '50 min', 4.8, '325 Kcal', 12, 1,
          [
            {
              'Noodle' : 'assets/images/ingre1.png',
            },
            {
              'Shrimp' : 'assets/images/ingre2.png',
            },
            {
              'Egg' : 'assets/images/ingre3.png',
            },
            {
              'Scallion' : 'assets/images/ingre4.png',
            },

          ], 'Simply put , Ramen is a japanee soup food'),


    ];



  }

  static List<Food> generatePopularFood(){
    return[
      Food('assets/images/dish4.png','Most Popular', 'Tomato Chicken', '50 min', 4.8, '325kcal', 22, 22,
          [
            {
              'Noodle' : 'assets/images/ingre1.png',
            },
            {
              'Shrimp' : 'assets/images/ingre2.png',
            },
            {
              'Egg' : 'assets/images/ingre3.png',
            },
            {
              'Scallion' : 'assets/images/ingre4.png',
            },

          ],
         'Thi is the most popular item foods')
    ];
  }





}