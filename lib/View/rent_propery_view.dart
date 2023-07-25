import 'package:flutter/material.dart';
import 'package:real/Model/property_model.dart';
import 'package:real/Utils/Components/rent_property_card.dart';
import 'package:real/View/Main%20Screens/full_property_view_screen.dart';

class RentProperty extends StatefulWidget {
  const RentProperty({Key? key}) : super(key: key);

  @override
  State<RentProperty> createState() => _RentPropertyState();
}

class _RentPropertyState extends State<RentProperty> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        PropertyModel propertyModel = PropertyModel(
            "assets/images/home$index.jpg",
            "House",
            "Surat, India",
            "India",
            "1000",
            "2",
            "2",
            "1",
            "1");
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    PropertyViewScreen(propertyModel: propertyModel)));
          },
          child: RentPropertyCard(propertyModel: propertyModel),
        );
      },
    );
  }
}
