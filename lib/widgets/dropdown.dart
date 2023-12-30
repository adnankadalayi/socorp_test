import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socorp_test/controller/home_controller.dart';
import 'package:socorp_test/dropdown_values.dart';

class DropDown extends StatelessWidget {
  final List listItems;
  var initialValue;
  final dropDownKey;
  DropDown(
      {super.key,
      required this.listItems,
      required this.initialValue,
      this.dropDownKey});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      hint: Text(initialValue),
      validator: (value) {
        if (dropDownKey == 1) {
          if (value == null) {
            return 'Select a Plan';
          }
        }

        return null;
      },
      items: listItems.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        initialValue = value;
        if (dropDownKey == 1) {
          controller.planListIndex.value = planList.indexOf(value as String);
          print(controller.planListIndex.value);
          controller.selectedPlan.value = value;
          controller.checkBoxVisibility.value = true;
          controller.inputText1.value = 'Basic Sum Assured';
          controller.inputText2.value = 'Current Age';
          controller.inputText3.value = 'Policy Term';
        }
        switch (controller.planListIndex.value) {
          case 0:
            controller.ageList.value = planList0Age;
            controller.termList.value = planList0PolicyTerm;
            break;
          case 1:
            controller.ageList.value = planList1and2Age;
            controller.termList.value = planList1PolicyTerm;
            break;
          case 2:
            controller.ageList.value = planList1and2Age;
            controller.termList.value = planList2PolicyTerm;
            break;
          case 3:
            controller.ageList.value = planList3Age;
            controller.termList.value = planList3PolicyTerm;
            break;
          case 4:
            controller.ageList.value = planList0Age;
            controller.termList.value = planList0PolicyTerm;
            break;
          case 5:
            controller.ageList.value = planList0Age;
            controller.termList.value = planList0PolicyTerm;
            break;
          case 6:
            controller.ageList.value = planList6Age;
            controller.termList.value = planList6PensionMode;
            break;
          case 7:
            controller.ageList.value = planList7Age;
            controller.termList.value = planList7PolicyType;
            break;
        }
      },
    );
  }
}
