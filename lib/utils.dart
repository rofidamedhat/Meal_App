import 'package:get/get.dart';
import 'package:meals_app/controller/meals_controller.dart';

registerController() async {
  Get.put(
    MealsController(),
  );
}
