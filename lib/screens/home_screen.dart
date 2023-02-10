import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("data tv"),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.black,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Center(
                          child: Stack(
                            children: const [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.red,
                                size: 130.0,
                              ),
                              
                            ],
                          ),
                        ),
                        const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("En direct",style: TextStyle(color: Colors.white, fontSize: 14),),
                             
                              ),
                      ],
                    )),
               Flexible(child: 
                Column(
                  children: [
                    Row(
                  children: [
                    Image.asset(
                      "assets/images/img2.PNG",
                      width: 100,
                      height: 100,
                    ),
                    const Expanded(
                      child: Text(
                        ("l'arriver du pape dens la ville de kinshasa a diminuer sensiblement les embouteillage"),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/img2.PNG",
                      width: 100,
                      height: 100,
                    ),
                    const Expanded(
                        child: Text(
                      ("l'eglise catholique refuse le mariage  homo sexuel "),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ))
                  ],
                  
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/img2.PNG",
                      width: 100,
                      height: 100,
                    ),
                    const Expanded(
                        child: Text(
                      ("l'eglise catholique refuse le mariage  homo sexuel "),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ))
                  ],
                  
                ),
                  ],
                ))
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: ("accuiel")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: ("calendrier")),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: ("ajout")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_arrow), label: ("ajout")),
            ],
          )),
    );
  }
}
