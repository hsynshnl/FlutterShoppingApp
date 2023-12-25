import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';

import '../../../core/constant/icon_enum.dart';
import '../../../core/helper/text_scale_size.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/padding/app_padding.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/my_custom_column.dart';

@RoutePage()
class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const AppPadding.symmetric(),
          child: CustomColumn(
            spaceHeight: 20,
            children: [
              SizedBox(
                height: context.screenHeight * 0.15,
                width: context.screenWidth * 0.15,
                child: SvgPicture.asset(
                  IconEnums.logo.toPathSvg,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.auth_reset_title.locale,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      LocaleKeys.auth_reset_subtitle.locale,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomTextField(
                controller: TextEditingController(),
                hintText: LocaleKeys.auth_email.locale,
                prefixIcon: Icons.mail,
                obscureText: false,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    context.screenWidth,
                    context.screenHeight * 0.06,
                  ),
                ),
                onPressed: () async {},
                child: Text(
                  LocaleKeys.auth_reset_title.locale,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
