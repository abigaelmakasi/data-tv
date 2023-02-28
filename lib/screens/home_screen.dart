import 'package:flutter/material.dart';
import 'package:data_tv/screens/video_widget';
import 'package:video_player/video_player.dart';
const Dblack = Colors.black;

void main() => runApp(VideoApp());

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data tv"),
          backgroundColor: Dblack,
          elevation: 0.0,
          leading:IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                )), 
        
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  color: Colors.blue,
                  size: 30,
                )),
          ],
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
