import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real/View/buy_product.dart';
import 'package:real/Viewmodel/explore_viewmodel.dart';
import '../../Utils/app_styles.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    print("Whole Build");
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FluentSystemIcons.ic_fluent_location_filled,
                    color: Styles.darkPrimaryColor,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Surat , In",
                    style: Styles.headLineStyle2.copyWith(fontSize: 20),
                  ),
                  const Spacer(),
                  const Center(
                    child: Icon(
                      CupertinoIcons.bell_fill,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              // Options selector for buy and rent..
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: Styles.greyColor,
                    boxShadow: [Styles.greyShadow]),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Expanded(child: Consumer<ExploreViewModel>(
                          builder: (context, value, child) {
                        return InkWell(
                          onTap: () {
                            value.setSelectedOptions(Options.rent);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: value.getSelectedOptions == Options.rent
                                    ? const Color(0xFF21A7AF)
                                    : Styles.greyColor,
                                borderRadius: BorderRadius.circular(24.0)),
                            child: Center(
                                child: Text('Rent',
                                    style: Styles.headLineStyle3.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: value.getSelectedOptions ==
                                                Options.rent
                                            ? Colors.white
                                            : Styles.textColor))),
                          ),
                        );
                      })),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(child: Consumer<ExploreViewModel>(
                          builder: ((context, value, child) {
                        return InkWell(
                          onTap: () {
                            value.setSelectedOptions(Options.buy);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: value.getSelectedOptions == Options.buy
                                    ? const Color(0xFF21A7AF)
                                    : Styles.greyColor,
                                borderRadius: BorderRadius.circular(24.0)),
                            child: Center(
                                child: Text('Buy',
                                    style: Styles.headLineStyle3.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: value.getSelectedOptions ==
                                                Options.buy
                                            ? Colors.white
                                            : Styles.textColor))),
                          ),
                        );
                      }))),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Location Near you ",
                style: Styles.headLineStyle3.copyWith(
                    color: Styles.textColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Expanded(child: BuyProduct())
            ],
          ),
        ),
      ),
    );
  }
}
