import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:promotion_ui/models/food_promo.dart';

class RePromocard extends StatefulWidget {
  FoodPromo fd;
  RePromocard(this.fd);

  @override
  _RePromocardState createState() => _RePromocardState();
}

class _RePromocardState extends State<RePromocard> {
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
        borderRadius: BorderRadius.circular(30),
    child:Card(
      child: Container(
          padding: EdgeInsets.all(8),
          height: 215,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 80,
                      width: 100,
                      child: Image.asset(widget.fd.imageUrl,fit: BoxFit.cover,),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.fd.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text('\u20B9 ${widget.fd.price} /plate '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.3 ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Earned from Promotions',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text('\u20B9 ${widget.fd.price}0/1000'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Paid To Promoters',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text('\u20B9 ${widget.fd.price}/100'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Days Active',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text('${widget.fd.activeDays} Days'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Activity',
                      style: TextStyle(fontSize: 15),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text('Re-Promote',style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
            ],
          ),),),
    );
  }
}
