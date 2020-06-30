class FoodPromo{
  String id;
  String title ;
  String price;
  String rating;
  String imageUrl;
  String activeDays;
  bool active;

  FoodPromo({this.id,this.title,this.price,this.rating,this.imageUrl,this.activeDays,this.active});
}

List<FoodPromo> foodItemData = [

  FoodPromo(
    id: 'a1',
    title: 'Shahi Paneer',
    price: '75',
    activeDays: '7/10',
    active: true,
    imageUrl: 'assets/images/shahi_paneer.jpg',
    rating: '4',
  ),
  FoodPromo(
    id: 'a1',
    title: 'Veg. Chowmein',
    price: '60',
    activeDays: '6/10',
    active: true,
    imageUrl: 'assets/images/veg_chowmein.jpg',
    rating: '4',
  ),
  FoodPromo(
    id: 'a1',
    title: 'Shahi Paneer',
    price: '75',
    activeDays: '7/10',
    active: true,
    imageUrl: 'assets/images/shahi_paneer.jpg',
    rating: '4',
  ),
];