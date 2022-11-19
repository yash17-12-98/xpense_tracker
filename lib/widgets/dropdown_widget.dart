import 'package:flutter/material.dart';

import '../common/common.dart';

class DropdownWidget extends StatelessWidget {

  final String? hint;
   const DropdownWidget({Key? key, this.hint,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.textFieldBorder,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButton(
          isExpanded: true,
          underline: const SizedBox(),
          hint: Text("$hint"),
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items,style: const TextStyle(color: Colors.black),),
            );
          }).toList(),
          onChanged: (String? value) {


          },
        ),
      ),
    );
  }
}
