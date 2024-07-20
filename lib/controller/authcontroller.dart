import 'package:get/get.dart';

class authController extends GetxController{
  static authController get to => Get.put(authController());
  bool hidePassword = true;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  onClickpasswordeyeIcon() async {
    if (hidePassword == true) {
      hidePassword = false;

    } else {
      hidePassword = true;

    }
    update();
  }


}