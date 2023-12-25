import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../core/widgets/divider.dart';
import '../../core/init/lang/locale_keys.g.dart';

@RoutePage()
class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.favourite_title.locale,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: CustomDivider(),
        ),
      ),
      body: const Center(
        child: Text(
          'Empty Favourite',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: Padding(
        padding: const AppPadding.symmetric(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff53B175),
            fixedSize: const Size(double.infinity, 67),
            padding: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.0),
            ),
          ),
          onPressed: () {},
          child: SizedBox(
            width: context.screenWidth,
            child: Center(
              child: Text(
                LocaleKeys.favourite_addToAllCart.locale,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
