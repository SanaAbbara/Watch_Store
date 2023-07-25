import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  List<String> gender;
  ValueChanged onchange;
  String selectedGender;

  SelectGender(
      {Key? key,
      required this.gender,
      required this.selectedGender,
      required this.onchange})
      : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 17.0, top: 12.0, bottom: 12.0),
              child: Text(
                'Select Your Gender:  ',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: DropdownButton(
            dropdownColor: Colors.white,
            items: widget.gender.map((item) {
              icon:
              Icon(
                Icons.expand_more,
              );
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: widget.onchange,
            value: widget.selectedGender,
          ),
        ),
      ],
    );
  }
}
