import 'package:flutter/material.dart';
import 'package:ink_estimator/core/constants/constants.dart';
import 'package:ink_estimator/languages/generated/app_localizations.dart';
import 'package:ink_estimator/themes/colors.dart';
import 'package:ink_estimator/view/widgets/alerts/alert_dialog_help.dart';
import 'package:ink_estimator/view/widgets/box/box_buttons.dart';
import 'package:ink_estimator/view/widgets/box/box_cards.dart';
import 'package:ink_estimator/view/widgets/cards/card_measurement.dart';
import 'package:ink_estimator/view/widgets/label/label_h2.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 60,
        leading: const SizedBox(),
        title: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(Constants.images.logo, fit: BoxFit.cover),
          ),
        ),
        actions: [
          SizedBox(
            width: 60,
            child: IconButton(
              icon: const Icon(Icons.help_outline,
                  color: AppColors.primaryColor, size: 20),
              onPressed: () {
                showHelpDialog(context);
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Constants.spacings.spacing24),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Constants.spacings.spacing24),
                child:
                    LabelH2(label: AppLocalizations.of(context)!.initPageHome),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Constants.spacings.spacing12),
                child: const BoxCards()
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Constants.spacings.spacing24),
                child: BoxButtons(
                  firstTitle: AppLocalizations.of(context)!.calculate,
                  firstAction: () {},
                  secondTitle: AppLocalizations.of(context)!.clean,
                  secondAction: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
