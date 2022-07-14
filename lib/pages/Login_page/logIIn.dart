import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mountain_trip_server/widgets/TextFormFieldDesign.dart';

import '../../misc/colors.dart';

class LogIn_pages extends StatelessWidget {
  const LogIn_pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController d = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/img/minhhung201102.png'),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black26,
                  AppColors.mainColor.withOpacity(0.5),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.1),
                        offset: Offset(-2, 2),
                        blurRadius: 3,
                      ),
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.1),
                        offset: Offset(2, -2),
                        blurRadius: 3,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      Container(
                        height: 150,
                        child: Image(
                          image: AssetImage('assets/img/MountainLogo.png'),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Login to Server',
                        style: TextStyle(
                          fontFamily: "Sen",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormFieldDesgin(
                        hintText: 'Enter your Email',
                        labelText: 'Email',
                        control: d,
                        icon: Icons.email,
                      ),
                      const SizedBox(height: 20),
                      TextFormFieldPassword(
                        hintText: 'Enter your Password',
                        labelText: 'Password',
                        control: d,
                      ),
                      const SizedBox(height: 40),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.mainColor,
                            image: DecorationImage(
                              image: AssetImage('assets/img/button-one.png'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
