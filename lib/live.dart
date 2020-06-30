import 'package:flutter/material.dart';
import 'package:promotion_ui/models/food_promo.dart';
import 'promo_card.dart';
class Live extends StatelessWidget {
  List<FoodPromo> fd;
  Live(this.fd);
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
    return PromoCard(fd: foodItemData[index],);
    },
        ),
    );
  }
}
