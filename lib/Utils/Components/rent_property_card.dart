import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:real/Model/property_model.dart';
import 'package:real/Utils/app_styles.dart';

class RentPropertyCard extends StatelessWidget {
  final PropertyModel propertyModel;

  const RentPropertyCard({super.key, required this.propertyModel});
  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage(propertyModel.image),
                ),
              ),
            )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  propertyModel.type,
                  style: Styles.cardTextStyle
                      .copyWith(color: Styles.darkPrimaryColor),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  propertyModel.address,
                  style: Styles.headLineStyle2.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  propertyModel.subAddress,
                  style: Styles.headLineStyle3.copyWith(fontSize: 14),
                ),
                const Spacer(),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_bed_filled,
                          color: Styles.darkPrimaryColor,
                          size: 19,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          propertyModel.bath,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_cookies_filled,
                          color: Styles.yellowColor,
                          size: 19,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          propertyModel.kitchen,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          "₹${propertyModel.price}",
                          style: Styles.headLineStyle2.copyWith(fontSize: 19.0),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "/m",
                          style: Styles.headLineStyle4.copyWith(fontSize: 15.0),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ))
      ]),
    );
  }
}
