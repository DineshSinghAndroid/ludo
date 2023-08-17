import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/PlayOffline.dart';
import 'package:ludo/ludo_ui/reusable/StringUtils.dart';
import 'package:ludo/ludo_ui/reusable/background-widget.dart';
import 'package:ludo/ludo_ui/reusable/colors_utils.dart';
import 'package:ludo/ludo_ui/reusable/custom_progress.dart';

class SelectGameType extends StatelessWidget {
  const SelectGameType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundImageWidget(
            isLogo: false,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                            child: Image.asset("assets/ludo/prof.png"),
                          ),
                          const Text(
                            "Guest123",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: CustomProgressBar(
                        progress: 0.6,
                        width: 60,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 70,
                      height: 20,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 20, right: 10),
                      decoration: const BoxDecoration(
                        color: Colors.black87, // Background color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/ludo/coin.png",
                            height: 30,
                          ),
                          const Text(
                            "3250",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(
                              "assets/ludo/add.png",
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Divider(
                  thickness: 5.0,
                  color: Colors.yellow,
                  height: 0.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "assets/ludo/Exit.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "assets/ludo/Social.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "assets/ludo/Support.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/ludo/Ludologo.png",
                    height: 150,
                    width: 150,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "assets/ludo/Settings.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "assets/ludo/Notice.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "assets/ludo/Group 27.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                //  height: 250,
                margin: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context) =>
                                   PlayOffline()
                                  )
                              );
                            },
                            child: Image.asset(
                              "assets/ludo/Offline.png",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/ludo/Online.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/ludo/Computer.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/ludo/Tournament.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 200,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 2),
                  color: ColorsUtils.darkBlue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.share,color: Colors.yellow,),
                    Text(
                      StringUtils.invite,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Image.asset(
                        "assets/ludo/Wallet.png",
                        height: 50,
                        width: 50,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(top:30.0),
                      child: Image.asset(
                        "assets/ludo/Leaderboard.png",
                        height: 50,
                        width: 50,
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Image.asset(
                        "assets/ludo/Store.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
