import 'package:flutter/material.dart';
import 'package:promotion_ui/provider/loyaltyrules.dart';

class RulesCard extends StatelessWidget {

  LoyaltyRules lr;

  RulesCard(this.lr);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
        padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Orders"),
                  Text('${lr.orders}'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Type"),
                  Text('${lr.type}'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
