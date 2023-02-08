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
}
