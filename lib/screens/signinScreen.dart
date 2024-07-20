import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:signin_signup_widget/controller/authcontroller.dart';
import '../routes/routes.dart';

class signinScreen extends StatelessWidget {
  final GlobalKey<FormState> _loginform = GlobalKey<FormState>();

  signinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _loginform,
              child: Container(
                color: Colors.white,
                width: screenWidth,
                height: screenHeight,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 560,
                      child: Opacity(
                        opacity: 0.15,
                        child: Container(
                          width: 300,
                          height: 300,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF010F1),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 169,
                      top: 268,
                      child: Opacity(
                        opacity: 0.15,
                        child: Container(
                          width: 500,
                          height: 300,
                          decoration: ShapeDecoration(
                            color: Color(0xFF4461F2),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Opacity(
                        opacity: 0.15,
                        child: Container(
                          width: 300,
                          height: 300,
                          decoration: ShapeDecoration(
                            color: Color(0xFFDDA82A),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        color: Colors.transparent,
                        width: 395,
                        height: 480,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 300,
                                height: 30,
                                child: Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w700,
                                    height: 0.08,
                                  ),
                                ),
                              ),

                              Text(
                                'Email:',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Container(
                                width: 350,
                                height: 50,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(color: Colors.white),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                    decoration: InputDecoration(
                                        hintText: 'enter email',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        icon: Icon(Icons.mail)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Password:',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Container(
                                width: 350,
                                height: 50,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(color: Colors.white),
                                    ],
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                child: Padding(
                                    padding: EdgeInsets.all(3),
                                    child: GetBuilder(
                                        init: authController(),
                                        builder: (todoController) {
                                          return TextFormField(
                                            obscureText:
                                                authController.to.hidePassword,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                            decoration: InputDecoration(
                                              hintText: 'enter password',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none,
                                              icon: Icon(Icons.lock),
                                              suffixIcon: IconButton(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary
                                                    .withOpacity(0.4),
                                                icon: Icon(
                                                  authController.to
                                                              .hidePassword ==
                                                          true
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                ),
                                                onPressed: () {
                                                  authController.to
                                                      .onClickpasswordeyeIcon();
                                                },
                                              ),
                                            ),
                                          );
                                        })),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Container(
                                  width: 350,
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.purpleAccent,
                                        // foreground color (text color)
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              12), // rounded corners
                                        ),
                                        elevation: 5,
                                        // elevation (shadow)
                                        padding: EdgeInsets.all(
                                            10), // button padding
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'SignIn',
                                        style: TextStyle(color: Colors.white),
                                      ))),

                              SizedBox(
                                height: 50,
                              ),
                              // ///-------don't have an account
                              Container(
                                width: 350,
                                height: 50,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Don`t have an account? ',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => userRegisterScreen()),
                                          // );

                                          // Get.to(userRegisterScreen());
                                          // Get.to(() => userRegisterScreen());
                                          // Get.offAll(RoutesClass.RegisterRoute());
                                          Get.toNamed(
                                              RoutesClass.RegisterRoute());
                                        },
                                        child: Text(
                                          'Sign up',
                                          style: TextStyle(color: Colors.blue),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
