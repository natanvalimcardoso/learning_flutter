import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter/dio/exemplo2/dio_controller.dart';

class DioPage extends GetView<DioController> {
   
   const DioPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('DioPage'),),
           body: Container(),
       );
  }
}