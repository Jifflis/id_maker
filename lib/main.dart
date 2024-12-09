import 'package:flutter/material.dart';
import 'package:id_maker_flutter/core/di/dependency_injector.dart';
import 'package:id_maker_flutter/features/projects/presentation/page/page_projects.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => MyScreenState();
}

class MyScreenState extends State<MyScreen> {
  // Create a [Player] to control playback.
  late final player = Player();

  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].
    player.open(Media(
        'https://player.vimeo.com/external/986760572.m3u8?s=0e2934f125deea1f298bcbc570dd9ecdd15a9483&oauth2_token_id=1541152877')).then((s){
      print('the value sir ${controller.rect.value}');
    });

    controller.rect.addListener((){
      print('the rect is ${controller.rect}');
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 9.0 / 16.0,
        // Use [Video] widget to display video output.
        child: Video(
          controller: controller,
          controls: (state) {
            return Stack(
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {
                      state.widget.controller.player.playOrPause();
                    },
                    icon: StreamBuilder(
                      stream: state.widget.controller.player.stream.playing,
                      builder: (context, playing) => Icon(
                        playing.data == true ? Icons.pause : Icons.play_arrow,color: Colors.white,
                     ),
                    ),
                    // It's not necessary to use [StreamBuilder] or to use [Player] & [VideoController] from [state].
                    // [StreamSubscription]s can be made inside [initState] of this widget.
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
