import 'package:flutter/material.dart';
import 'package:real/Model/property_model.dart';
import 'package:real/Utils/general_utils.dart';

class PropertyViewScreen extends StatefulWidget {
  final PropertyModel propertyModel;
  const PropertyViewScreen({super.key, required this.propertyModel});

  @override
  State<PropertyViewScreen> createState() => _PropertyViewScreenState();
}

class _PropertyViewScreenState extends State<PropertyViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Image.asset(
                  widget.propertyModel.image,
                  fit: BoxFit.cover,
                  width: GeneralUtils.getWidth(context),
                  height: GeneralUtils.getHeight(context) / 2.5,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red.shade400,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    ));
  }
}
