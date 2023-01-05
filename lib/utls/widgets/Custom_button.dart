import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    // required TextEditingController controller,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Colors.deepPurpleAccent.shade100,
        height: 60,
        width: double.infinity,
        child: MaterialButton(
            onPressed: onTap,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  text.toString(),
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, letterSpacing: .2),
                ),
              ),
            )),
      ),
    );
  }
}

Widget customCircleButton() {
  return FloatingActionButton(
    backgroundColor: Colors.deepPurpleAccent.shade100,
    onPressed: () {},

    //params
  );
}
