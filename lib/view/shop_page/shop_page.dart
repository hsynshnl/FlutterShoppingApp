import 'package:flutter/material.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/image_path.dart';
import '../../../core/widgets/list.dart';
import '../../../core/widgets/search_text_field.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: SizedBox(
          child: Column(
            children: [
              IconEnums.logo.toImage,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconEnums.location.toImage,
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Istanbul, Zeytinburnu",
                      style: TextStyle(
                          color: Color(0xff4C4F4D),
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                const SearchBarTextField(),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/images/png/banner.png",
                  width: double.infinity,
                  height: 130,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      Strings.exclusiveOffer,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        Strings.seeAll,
                        style: TextStyle(
                            color: cMainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      ),
                    )
                  ],
                ),
                const HorizontalListView(),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        Strings.bestSelling,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          Strings.seeAll,
                        ),
                      )
                    ],
                  ),
                ),
                const HorizontalListView(),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        Strings.groceries,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(Strings.seeAll),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 105,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      cacheExtent: 105,
                      itemExtent: 250,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: cGroceriesBackgroundColors[index],
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, bottom: 16),
                                child: Row(
                                  children: [
                                    Image.asset(ImagePath
                                        .groceriesListImagePath[index]),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        Strings.groceriesListHeads[index],
                                        style: Theme.of(context).textTheme.headline3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const HorizontalListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}