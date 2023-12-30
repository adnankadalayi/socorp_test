import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socorp_test/dropdown_values.dart';

class HomeController extends GetxController {
  final planListIndex = 100.obs;
  final selectedPlan = 'Select a Plan'.obs;
  final inputText1 = 'Sum Assured'.obs;
  final inputText2 = 'Age'.obs;
  final inputText3 = 'Term'.obs;

  final checkBox1 = false.obs;
  final checkBox2 = false.obs;

  final checkBoxVisibility = false.obs;

  final ageList = [].obs;
  final termList = [].obs;
}
