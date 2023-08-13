import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/reusable/StringUtils.dart';
import 'package:ludo/ludo_ui/reusable/background-widget.dart';
import 'package:ludo/ludo_ui/select_country.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImageWidget(
            isLogo: false,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 100,),
                  Image.asset(
                    "assets/ludo/Ludologo.png",
                    height: 200,
                    width: 250,
                  ),
                  const SizedBox(height: 30,),
                  Text(
                    StringUtils.signup,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) =>
                          const CountrySelect()
                          )
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      minimumSize: const Size(200.0, 0), // Minimum width
                      backgroundColor: Colors.white,
                      maximumSize:
                          const Size(250.0, double.infinity), // Maximum width
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/ludo/Ludologo.png',
                            height: 24.0,
                            width: 24.0,
                          ),
                           Text(StringUtils.signIn,
                            style: const TextStyle(fontSize: 16.0,color: Colors.grey,fontWeight: FontWeight.w600,),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Checkbox(
                      value: true,activeColor: Colors.amber,
                      onChanged: (value) {
                        //  value =!value;
                      },
                    ),
                    Text(
                      StringUtils.lorem,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
