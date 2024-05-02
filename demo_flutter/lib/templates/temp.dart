import 'package:demo_flutter/Templates.dart';
import 'package:demo_flutter/records/select_template_for_record.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF212A3E),
      ),
      backgroundColor: Color(0xFFF1F6F9),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 140,
                      height: 140,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MyHomePAge()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          side: BorderSide(
                            color: Color(0xFF9BA4B5),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/template.png',
                              width: 48, // İkon genişliği
                              height: 48, // İkon yüksekliği
                            ),
                            SizedBox(height: 8), // İkon ile metin arasında boşluk
                            Text(
                              "Templates",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFF212A3E),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 140,
                      height: 140,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SelectTemplateForRecord();
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          side: BorderSide(
                            color: Color(0xFF9BA4B5),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/record.png',
                              width: 48, // İkon genişliği
                              height: 48, // İkon yüksekliği
                            ),
                            SizedBox(height: 8), // İkon ile metin arasında boşluk
                            Text(
                              "Create Record",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFF212A3E),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),

                      ),
                    ),
                  ),
                ],
              ),

            ],
          )),
      /*floatingActionButton: Container(
          width: 75,
          height: 75,
          child:FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                MaterialPageRoute(builder: (context) => MainMenu());
              },
              backgroundColor: Color(0xFF7A3E85),
              child: Icon(Icons.add),
              shape: CircleBorder(),
            ),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/

      bottomNavigationBar: Container(
        height: 55,
        child: BottomAppBar(
          color: Color(0xFF212A3E),
        ),
      ),

    );
  }
}
