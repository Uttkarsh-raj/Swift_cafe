import 'package:flutter/material.dart';
import 'package:swift_cafe/screens/coffee_info/radio_button.dart';

class ChoiceCupFillingListItem extends StatelessWidget {
  const ChoiceCupFillingListItem(
      {super.key, required this.index, required this.text, required this.curr});
  final int index;
  final int curr;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.035,
      width: size.width * 0.16,
      decoration: BoxDecoration(
        color: (index != curr)
            ? const Color.fromRGBO(207, 206, 206, 1)
            : const Color.fromARGB(252, 55, 173, 84),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: (index == curr)
                ? const Color.fromARGB(255, 224, 223, 223)
                : Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class Choices extends StatelessWidget {
  const Choices({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const Flexible(
          flex: 1,
          child: SwitchButton(),
        ),
        SizedBox(width: size.width * 0.05),
        Flexible(
          flex: 1,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 224, 223, 223),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
