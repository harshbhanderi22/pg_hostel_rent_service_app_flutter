import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';

class BuyProduct extends StatefulWidget {
  const BuyProduct({Key? key}) : super(key: key);

  @override
  State<BuyProduct> createState() => _BuyProductState();
}

class _BuyProductState extends State<BuyProduct> {
  // List of Images..
  //TODO: upload original Images
  static final List _imageList = [0, 1, 2];
  //List of Text..
  //TODO: Change According the add in type of home
  static final List<Widget> _textWidget = <Widget>[
    Text(
      "House",
      style: Styles.cardTextStyle.copyWith(
          color: Styles.darkPrimaryColor),
    ),
     Text(
      "TownHouse",
      style: Styles.cardTextStyle.copyWith(
          color: Styles.tealColor),
    ),
     Text(
      "House",
      style: Styles.cardTextStyle.copyWith(
          color: Styles.darkPrimaryColor),
    ),

  ];
  //List of Address..
  //TODO: Change According the add in Address
  static final List<Widget> _addressWidget = <Widget>[
    Text(
      "79 Park Drive East Drive",
      style: Styles.headLineStyle2.copyWith(fontSize: 18),
    ),
     Text(
      "132 Lander ave",
      style: Styles.headLineStyle2.copyWith(fontSize: 18),
    ),
      Text(
      "80 Burnside Ave",
      style: Styles.headLineStyle2.copyWith(fontSize: 18),
    ),];
    //List of Address..
  //TODO: Change According the add in SubAddress
  static final List<Widget> _subAddressWidget = <Widget>[
    Text(
      "Flushing, New York 11367",
      style: Styles.headLineStyle3.copyWith(fontSize: 14),
    ),
     Text(
      "Staten Iseland, New York 10314",
      style: Styles.headLineStyle3.copyWith(fontSize: 14),
    ),
      Text(
      "80 Burnside Ave",
      style: Styles.headLineStyle3.copyWith(fontSize: 14),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          padding: const EdgeInsets.all(6.0),
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                  color: Colors.black.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 1.0)),
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/home${_imageList[index]}.jpg"),
                    ),
                  ),
                )),
                SizedBox( width: 8,),
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textWidget[index],
                     const  SizedBox(height: 4.0,),
                      _addressWidget[index],
                      const  SizedBox(height: 4.0,),
                      _subAddressWidget[index],
                      const Spacer(),
                      Row(children: [
                        Row(children: [
                          Icon(FluentSystemIcons.ic_fluent_bed_filled , color: Styles.darkPrimaryColor,size: 19,),
                           const SizedBox(width: 4.0,),
                          Text("2", style: Styles.headLineStyle4.copyWith(color: Colors.black),)
                        ],),
                        const SizedBox(width: 7.0,),
                         Row(children: [
                          Icon(FluentSystemIcons.ic_fluent_cookies_filled , color: Styles.yellowColor,size: 19,),
                           const SizedBox(width: 4.0,),
                          Text("2", style: Styles.headLineStyle4.copyWith(color: Colors.black),)
                        ],),
                        const Spacer(),
                        Row(children: [
                          Text( "\$2,496",style: Styles.headLineStyle2.copyWith(fontSize: 19.0),),
                           const SizedBox(width: 4.0,),
                          Text("/m", style: Styles.headLineStyle4.copyWith(fontSize: 15.0),)
                        ],),
                      ],)
                    ],
                  ),
                ))
          ]),
        );
      },
    );
  }
}
