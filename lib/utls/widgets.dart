import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(
    this.text, {
    super.key,
    this.fs = 16,
    this.fw = FontWeight.w600,
    this.clr = const Color(0xffffffff),
  });
  final String text;
  final double? fs;
  final FontWeight? fw;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(fontSize: fs, fontWeight: fw, color: clr));
  }
}

class SubtitleText14 extends StatelessWidget {
  const SubtitleText14(
    this.text, {
    super.key,
    this.fs = 14,
    this.fw = FontWeight.w600,
    this.clr = const Color(0xffffffff),
  });
  final String text;
  final double? fs;
  final FontWeight? fw;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(fontSize: fs, fontWeight: fw, color: clr));
  }
}

class SubtitleText12 extends StatelessWidget {
  const SubtitleText12(
    this.text, {
    super.key,
    this.fs = 12,
    this.fw = FontWeight.w600,
    this.clr = const Color(0xFF000000),
  });
  final String text;
  final double? fs;
  final FontWeight? fw;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(fontSize: fs, fontWeight: fw, color: clr));
  }
}
