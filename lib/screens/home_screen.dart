import 'package:flutter/material.dart';
import 'package:data_tv/screens/video_widget';
import 'package:video_player/video_player.dart';

const Dblack = Colors.black;

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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("data tv"),
          backgroundColor: Dblack,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
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
                                  aspectRatio:
                                      videocontroller.value.aspectRatio,
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
                const SizedBox(),
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
                        children: <Widget>[],
                      ),
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
        ));
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
}
