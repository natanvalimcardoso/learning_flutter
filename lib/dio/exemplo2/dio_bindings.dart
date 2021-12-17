import 'package:get/get.dart';
import 'package:learn_flutter/dio/exemplo2/dio_controller.dart';

class  DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DioController());
  }
}