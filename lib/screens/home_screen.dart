import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:data_tv/screens/video_widget';
>>>>>>> main

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("data tv"),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/img2.PNG",
                    width: 100,
                    height: 100,
                  ),
                  const Expanded(child: Text(
                    ("bienvenue sur notre chaine data dhggvdfjfkljdfkl;jjgfj;lk "),
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),)
                 
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/img2.PNG",
                    width: 100,
                    height: 100,
                  ),
                  const Text(
                    ("l'arriver du pape dens la ville de kinshasa s")
                
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/img2.PNG",
                    width: 100,
                    height: 100,
                  ),
                  const Text("l'eglise catholique refuse les mariage")

                                  
                ],

          
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/img2.PNG",
                    width: 100,
                    height: 100,
                  ),
                  const Text("MERCI MAMAN FOR ALL")

                                  
                ],

          
              ),
              
              Center(
                child: ElevatedButton(
                    onPressed:()=> print("click btn"),
                    child:const Text("afficher le planning")
                  ),
        
              )
              
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ("accuiel")
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: ("planing")
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: ("ajout")
                ),
            ],
            
            
          )
          ),
    );
  }
=======
  late int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data tv"),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                const VideoWidget(),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    infosItem(
                      title:
                          "Visite du Pape Francois I a Kinshasa = RDC, il a ete recu par son excellence Fatshi Beeeeeeeeeeeeeeeee",
                      image: "assets/images/pape.jpg",
                    ),
                    infosItem(
                      title:
                          "La future developpeuse Abigael Makasi abeli likolo ya Gradle. Mama ehhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh",
                      image: "assets/images/pape.jpg",
                    ),
                    // s
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // Row(
                    //   children: [
                    //     ClipRRect(
                    //       borderRadius: BorderRadius.circular(15),
                    //       child: Image.asset(
                    //         "assets/images/pape.jpg",
                    //         width: 100,
                    //         height: 100,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     const SizedBox(
                    //       width: 200,
                    //       child: Text(
                    //         ("l'arriver du pape dans la ville de kinshasa a diminuer sensiblement les embouteillage"),
                    //         style: TextStyle(
                    //           fontSize: 14,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // Row(
                    //   children: [
                    //     ClipRRect(
                    //       borderRadius: BorderRadius.circular(15),
                    //       child: Image.asset(
                    //         "assets/images/pape.jpg",
                    //         width: 100,
                    //         height: 100,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     const SizedBox(
                    //       width: 200,
                    //       child: Text(
                    //         ("l'arriver du pape dans la ville de kinshasa a diminuer sensiblement les embouteillage"),
                    //         style: TextStyle(
                    //           fontSize: 14,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // Row(
                    //   children: [
                    //     ClipRRect(
                    //       borderRadius: BorderRadius.circular(15),
                    //       child: Image.asset(
                    //         "assets/images/pape.jpg",
                    //         width: 100,
                    //         height: 100,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 15,
                    //     ),
                    //     const SizedBox(
                    //       width: 200,
                    //       child: Text(
                    //         ("le gouverneure de la ville de kinshasa decide "),
                    //         style: TextStyle(
                    //           fontSize: 14,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          currentIndex: pageIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ("accuiel")),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ("calendrier")),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ("ajout")),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow), label: ("play")),
          ],
        ));
  }
}

Widget infosItem({required String title, required String image, }) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      children: [
        ClipRRect(
          child: Image.asset(
            image,
            width: 90,
            height: 55,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: 200,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  );
>>>>>>> main
}
