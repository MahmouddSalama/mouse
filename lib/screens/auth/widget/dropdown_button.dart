import 'package:chat_app2/constans/colors.dart';
import 'package:flutter/material.dart';
class DefultDropDownButton extends StatefulWidget {
  @override
  _DefultDropDownButtonState createState() => _DefultDropDownButtonState();
}

class _DefultDropDownButtonState extends State<DefultDropDownButton> {
  final List<String> country = [
    '+02',
    '+05',
    '+04',
    '+52',
    '+92',
    '+03',
  ];
  String dropdownValue = '+02';

  @override
  Widget build(BuildContext context) {
      return Container(
        width: 65,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: KinputdColor,
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        child: DropdownButton(
          value: dropdownValue,
          style: const TextStyle(color: KsecoundColor, fontSize: 18),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: country.map((e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          }).toList(),
        ),
      );
  }
}
