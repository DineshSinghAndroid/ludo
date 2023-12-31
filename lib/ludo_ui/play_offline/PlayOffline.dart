import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/play_offline/play_offline_players.dart';
import 'package:ludo/ludo_ui/reusable/empty_reusable_container.dart';
import 'package:ludo/ludo_ui/reusable/reusable_container.dart';

class PlayOffline extends StatelessWidget {
  const PlayOffline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 150,),
              const Text(
                "OFFLINE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 35),
              ),
              const SizedBox(height: 60,),
              const ReusableEmptyContainer(
                width: 300,
                widget: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SELECT PLAYERS",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      ),
                      ReusableColoredContainer(
                        height: 50,
                        width: 180,
                        text: "QUICK MODE",
                        font_Size: 25,
                      ),
                      ReusableColoredContainer(
                        height: 50,
                        width: 180,
                        font_Size: 16,
                        text: "PLAY WITH FRIENDS",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: ReusableEmptyContainer(
                        height: 30,
                        width: 50,
                        widget: Image.asset(
                          "assets/ludo/backicon.png",
                          height: 25,
                          width: 20,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                        showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,backgroundColor: Colors.black38,
                            builder: (BuildContext context) {
                              return  PlayOfflinePlayers();
                            });
                      },
                      child: const ReusableColoredContainer(
                        width: 80,
                        height: 40,
                        text: "NEXT",
                        font_Size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
