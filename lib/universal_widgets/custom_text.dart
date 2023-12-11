import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double size;
  final Color color;
  final TextAlign? textAlign;

  const CustomText({
    Key? key,
    required this.title,
    this.color = primaryT,
    this.size = 16, this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final Color? firstColor;
  final Color? secColor;
  final Widget child;

  const GradientText({
    Key? key,
    this.firstColor = borderC,
    this.secColor = primaryT,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [firstColor!, secColor!],
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
