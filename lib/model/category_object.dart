class CategoryObject {
  String description ;
  String imgPath ;
  CategoryObject(this.description , this.imgPath);
  static List<CategoryObject> categoryObjects = [CategoryObject("General", "assets/images/world.png")
  ,CategoryObject("Business", "assets/images/business.png" ) ,
  CategoryObject("Entertainment" , "assets/images/entertainment.png"),
  CategoryObject("Health", "assets/images/health.png"),
    CategoryObject("Science", "assets/images/science.png"),
    CategoryObject("Sport", "assets/images/sports.png")
  ];

}