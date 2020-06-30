import 'package:flutter/material.dart';
import 'package:promotion_ui/models/food_promo.dart';
import 'repromo_card.dart';

class Previous extends StatelessWidget {
  List<FoodPromo> fd;
  Previous(this.fd);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: foodItemData.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 16,right: 16),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return RePromocard(foodItemData[index]);
        },
      ),
    );
  }
}
