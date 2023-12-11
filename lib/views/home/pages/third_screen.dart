import 'package:flutter/material.dart';

import '../../../universal_widgets/custom_text.dart';
import '../../../universal_widgets/expanded_button.dart';
import '../../../universal_widgets/message_widget.dart';
import '../../../utils/colors.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Bg3,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  title: 'Ask your Questions',
                  color: Bg4,
                  size: 12,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Center(
                child: CustomText(
                  title: "Pose Your Questions to AI",
                  size: 14,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: borderC,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.ac_unit_outlined,
                      color: primaryB,
                      size: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  CustomText(
                    title: 'Vaani',
                    color: primaryFadeT.withOpacity(0.7),
                    size: 14,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomText(
                title: 'Here are some suggestions for you.',
                color: primaryFadeT.withOpacity(0.7),
                size: 12,
              ),
              const SizedBox(
                height: 10.0,
              ),
              MessageWidget(
                msg: "How will be my dad's health for the coming three months?",
              ),
              MessageWidget(msg: "Will I get married this year?"),
              MessageWidget(msg: "Will I win the upcoming football match?"),
              MessageWidget(
                  msg:
                      "How will be my dad's health for the coming three months?"),
              MessageWidget(msg: "How will be my comming days?"),
            ],
          ),
          ExpandedButton(
            title: 'Ask your own Question to Vaani',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
