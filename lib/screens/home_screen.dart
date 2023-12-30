import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socorp_test/constants.dart';
import 'package:socorp_test/controller/home_controller.dart';
import 'package:socorp_test/dropdown_values.dart';
import 'package:socorp_test/widgets/dialog_box.dart';
import 'package:socorp_test/widgets/dropdown.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomeController());
  final formKey = GlobalKey<FormState>();
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'LIC Premium Calculator',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Obx(
                    () => Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        controller.selectedPlan.value,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropDown(
                    listItems: planList,
                    initialValue: 'Select a Plan',
                    dropDownKey: 1,
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: Text(
                        controller.planListIndex.value == 4
                            ? 'Annuity Type'
                            : 'Risk Cover Type',
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: DropDown(
                        listItems: controller.planListIndex.value == 4
                            ? planList4AnnuityType
                            : planList5RiskCoverType,
                        initialValue: controller.planListIndex.value == 4
                            ? planList4AnnuityType.first
                            : planList5RiskCoverType.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: Text(
                        controller.planListIndex.value == 4
                            ? 'Policy Type'
                            : 'Premium Type',
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: DropDown(
                        listItems: controller.planListIndex.value == 4
                            ? planList4PolicyType
                            : planList5PremiumType,
                        initialValue: controller.planListIndex.value == 4
                            ? planList4PolicyType.first
                            : planList5PremiumType.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: Text(
                        controller.planListIndex.value == 4
                            ? 'Primary Annuitant Age'
                            : 'Age',
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: DropDown(
                        listItems: controller.planListIndex.value == 4
                            ? planList4Age
                            : planList5Age,
                        initialValue: controller.planListIndex.value == 4
                            ? planList4Age.first
                            : planList5Age.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: Text(
                        controller.planListIndex.value == 4
                            ? 'Single Life Pension Option'
                            : 'Gender',
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? true
                          : false,
                      child: DropDown(
                        listItems: controller.planListIndex.value == 4
                            ? planList4PensionOption
                            : planList5Gender,
                        initialValue: controller.planListIndex.value == 4
                            ? planList4PensionOption.first
                            : planList5Gender.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible:
                          controller.planListIndex.value == 5 ? true : false,
                      child: const Text(
                        'Policy Term',
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible:
                          controller.planListIndex.value == 5 ? true : false,
                      child: DropDown(
                        listItems: planList5PolicyTerm,
                        initialValue: planList5PolicyTerm.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      controller.planListIndex.value == 4
                          ? 'Single Premium'
                          : controller.inputText1.value,
                      style: kInputTextDecoration,
                    ),
                  ),
                  TextFormField(
                    controller: inputController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter a Number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? false
                          : true,
                      child: Text(
                        controller.inputText2.value,
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? false
                          : true,
                      child: DropDown(
                        listItems: controller.ageList.value,
                        initialValue: controller.planListIndex.value == 100
                            ? 'Select a Plan'
                            : controller.ageList.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? false
                          : true,
                      child: Text(
                        controller.inputText3.value,
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.planListIndex.value == 4 ||
                              controller.planListIndex.value == 5
                          ? false
                          : true,
                      child: DropDown(
                        listItems: controller.termList.value,
                        initialValue: controller.planListIndex.value == 100
                            ? 'Select a Plan'
                            : controller.termList.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible:
                          controller.planListIndex.value == 7 ? true : false,
                      child: const Text(
                        'Purchase Mode',
                        style: kInputTextDecoration,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible:
                          controller.planListIndex.value == 7 ? true : false,
                      child: DropDown(
                        listItems: planList7PurchaseMode,
                        initialValue: planList7PurchaseMode.first,
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.checkBoxVisibility.value == true
                          ? true
                          : false,
                      child: CheckboxListTile(
                        value: controller.checkBox1.value,
                        onChanged: (value) {
                          controller.checkBox1.value = value!;
                        },
                        title:
                            const Text('Accidental & Disability Benefit Rider'),
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: controller.checkBoxVisibility.value == true
                          ? true
                          : false,
                      child: CheckboxListTile(
                        value: controller.checkBox2.value,
                        onChanged: (value) {
                          controller.checkBox2.value = value!;
                        },
                        title: const Text('Term Rider'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        inputController.clear();
                        Get.dialog(const DialogBox());
                      }
                    },
                    child: const Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
