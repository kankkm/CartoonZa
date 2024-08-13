import 'package:CartoonZa/Pages/AuthPage/AuthPageBody.dart';
import 'package:CartoonZa/Pages/Homepage/HomePage.dart';
import 'package:CartoonZa/Pages/WelcomePage/WelcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../Pages/AuthPage/AuthPage.dart';

class SplaceController extends GetxController {
  final auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    splaceController();
  }

  void splaceController() {
    Future.delayed(Duration(seconds: 4), () {
      if (auth.currentUser != null) {
        Get.offAll(HomePage());
      } else {
        Get.offAll(WelcomePage());
      }
    });
  }
}
