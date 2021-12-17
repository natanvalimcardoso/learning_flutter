
import 'package:get/get.dart';
import 'package:learn_flutter/dio/exemplo2/rest_client.dart';

class HomeBindinds implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}