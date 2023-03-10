import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

const Dblack = Colors.black;
const dwhite = Colors.white;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int pageIndex = 0;
  late VideoPlayerController videocontroller;
  String Texbegin = '';
  int val = 0;
  @override
  void initState() {
    super.initState();

    videocontroller = VideoPlayerController.asset("assets/makasi_pembele.mp4")
      ..initialize().then((value) {
        setState(() {
          videocontroller.play();
          videocontroller.setLooping(true);
          videocontroller.setVolume(1.0);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
    
        PopupMenuButton(
          
          itemBuilder: (context){
            return [
                  PopupMenuItem<int>(
                      value: 0,
                      child: Text("My Account"),
                  ),

                  PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                  ),

                  PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
                  ),
              ];
          },
          onSelected:(value){
            if(value == 0){
                print("My account menu is selected.");
            }else if(value == 1){
                print("Settings menu is selected.");
            }else if(value == 2){
                print("Logout menu is selected.");
            }
          }
        ),

  ],
        title: Image.asset(
          "assets/images/datatv_logo.png",
          fit: BoxFit.contain,
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: Dblack,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Stack(
                    children: [
                      videocontroller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: videocontroller.value.aspectRatio,
                              child: VideoPlayer(videocontroller),
                            )
                          : Container(),
                      Align(
                        alignment: Alignment.center,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                videocontroller.value.isPlaying
                                    ? videocontroller.pause()
                                    : videocontroller.play();
                              });
                            },
                            icon: Icon(videocontroller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow)),
                      )
                    ],
                  )),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      infosItem(
                        title: "une formation complete sur le sql serveur tutoriel, y compris le base de donnees ",
                        image: "assets/images/pape.jpg",
                      ),
                      infosItem(
                        title:
                            "une formaton de haute qualite , je nous invite a venir apprendre sur le sql",
                        image: "assets/images/pape.jpg",
                      ),
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
                      infosItem(
                        title:
                            "Visite du Pape Francois I a Kinshasa = RDC, il a ete recu par son excellence Fatshi Beeeeeeeeeeeeeeeee",
                        image: "assets/images/pape.jpg",
                      ),
                      infosItem(
                        title:
                            "je suis la mamamn d'un magnifique petite garcons adorable",
                        image: "assets/images/pape.jpg",
                      ),
                      infosItem(
                        title:
                            "je suis la mamamn d'un magnifique petite garcons adorable",
                        image: "assets/images/pape.jpg",
                      ),
                      infosItem(
                        title:
                            "je suis la mamamn d'un magnifique petite garcons adorable",
                        image: "assets/images/pape.jpg",
                      ),
                      infosItem(
                        title:
                            "je suis la mamamn d'un magnifique petite garcons adorable",
                        image: "assets/images/pape.jpg",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget infosItem({
  required String title,
  required String image,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            image,
            width: 90,
            height: 70,
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
}
