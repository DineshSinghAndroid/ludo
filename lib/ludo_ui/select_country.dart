import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/reusable/StringUtils.dart';
import 'package:ludo/ludo_ui/reusable/background-widget.dart';
import 'package:ludo/ludo_ui/reusable/colors_utils.dart';
import 'package:ludo/ludo_ui/select_game_type.dart';

class CountrySelect extends StatelessWidget {
  const CountrySelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      'assets/ludo/1.png',
      'assets/ludo/2.png',
      'assets/ludo/3.png',
      'assets/ludo/4.png',
      'assets/ludo/5.png',
      'assets/ludo/6.png',
      'assets/ludo/7.png',
      'assets/ludo/8.png',
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundImageWidget(
            isLogo: false,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ludo/Ludologo.png',
                height: 100.0,
                width: 100.0,
              ),
              Container(
                width: 150,
                margin: const EdgeInsets.all(
                  10.0,
                ),
                padding: EdgeInsets.all(
                  10.0,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  color: Colors.white,
                ),
                child: const Text(
                  "Guest123",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                color: Colors.black87,
                height: 40,
                padding: const EdgeInsets.all(0.0),
                child: DropdownButton<String>(
                  padding: const EdgeInsets.all(0.0),
                  isDense: false,
                  underline: SizedBox(),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white,
                  ),
                  iconSize: 30,
                  items: const [
                    DropdownMenuItem(value: 'Country 1', child: Text('India')),
                    DropdownMenuItem(value: 'Country 2', child: Text('USA')),
                  ],
                  onChanged: (value) {},
                  hint: Container(
                    color: Colors.black87,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.blueAccent,
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            "assets/ludo/earth.png",
                            height: 25,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          StringUtils.selectCountry,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 250,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 2),
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        StringUtils.selectProfile,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: ColorsUtils.darkBlue,
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                          padding: const EdgeInsets.all(0.0),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemCount: imagePaths.length,
                          itemBuilder: (context, index) {
                            int imageNumber = index + 1;
                            return Image.asset(
                              imagePaths[index],
                              height: 30,
                              width: 30,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                      const SelectGameType()
                      )
                  );
                },
                child: Container(
                  height: 50,
                  width: 200,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow, width: 2),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Text(
                    StringUtils.continueText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
