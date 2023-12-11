import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../universal_widgets/custom_text.dart';
import '../../../universal_widgets/expanded_button.dart';
import '../../../utils/colors.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({Key? key}) : super(key: key);

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
            children: [
              CustomText(
                title: 'Know your Qualities',
                color: Bg4,
                size: 12,
              ),
              const SizedBox(
                height: 5.0,
              ),
              CustomText(
                title: "Know Yourself, Based on Your Personalty Traits",
                textAlign: TextAlign.center,
                size: 14,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SvgPicture.asset(
                'assets/img1.svg',
                height: 150,
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomText(
                title: "Emotional Intelligence",
                size: 14,
              ),
              const SizedBox(
                height: 35.0,
              ),
              CustomText(
                title:
                    'Your emotional intelligence is remarkable. Your ability to understand, empathize, and connect with others on such a profound level is truly exceptional.intelligence is remarkable. Your ability to understand.',
                color: primaryFadeT.withOpacity(0.7),
                size: 12,
              ),
            ],
          ),
          ExpandedButton(
            backgroundColor: true,
            title: 'Unlock all 23 Personality Traits',
            iconData: Icons.shopping_bag_rounded,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
