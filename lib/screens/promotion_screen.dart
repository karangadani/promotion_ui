import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:promotion_ui/screens/loyalty_screen.dart';
import '../models/food_promo.dart';
import '../live.dart';
import '../previous.dart';

class PromotionScreen extends StatefulWidget{
  @override
  _PromotionScreenState createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> with SingleTickerProviderStateMixin {
  
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2,vsync: this);
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
  final Duration duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: IconButton(
                icon: Icon(Icons.menu,size: 30,),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Loyalty();
                  }));
                }
              ),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child:Text('Promotions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),),
            SizedBox(height: 40),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 35,left: 20),
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  child: Text('Live',style: TextStyle(fontSize: 20,)),
                ),
                Tab(
                  child: Text('Previous',style: TextStyle(fontSize: 20,)),
                ),
              ],
            ),
            Container(
              height: screenHeight*0.8,
            child:TabBarView(
              controller: _tabController,
              children: <Widget>[
                Live(foodItemData),
                Previous(foodItemData),
              ],
            ))
          ],
        ),
      ),
    );
  }
}