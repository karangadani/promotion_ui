import 'package:flutter/material.dart';
import 'package:promotion_ui/models/food_promo.dart';

class PromoCard extends StatefulWidget {
  FoodPromo fd;
  PromoCard({this.fd});

  @override
  _PromoCardState createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
      child:Card(
      child: Container(
          padding: EdgeInsets.all(8),
          height: 210,
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
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              return widget.fd.active = !widget.fd.active;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Theme.of(context).primaryColor),
                            ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'ON',
                                      style: TextStyle(
                                          backgroundColor: widget.fd.active
                                              ? Theme.of(context).primaryColor
                                              : Colors.white,
                                          color: widget.fd.active
                                              ? Colors.white
                                              : Theme.of(context).primaryColor),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'OFF',
                                      style: TextStyle(
                                        backgroundColor: widget.fd.active
                                            ? Colors.white
                                            : Theme.of(context).primaryColor,
                                        color: widget.fd.active
                                            ? Theme.of(context).primaryColor
                                            : Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        )),
                  ],
                ),
              ),
            ],
          ),),),
    );
  }
}
