import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:id_maker_flutter/core/dialogs/create_project_modal.dart';
import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';
import 'package:id_maker_flutter/features/projects/presentation/bloc/projects_bloc.dart';

import '../../../../core/di/dependency_injector.dart';
import '../bloc/projects_state.dart';
import 'package:better_player/better_player.dart';

class PageProjects extends StatefulWidget {
  const PageProjects({super.key});

  @override
  State<PageProjects> createState() => _PageProjectsState();
}

class _PageProjectsState extends State<PageProjects> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
    BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
    );
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      'https://player.vimeo.com/external/986760572.m3u8?s=0e2934f125deea1f298bcbc570dd9ecdd15a9483&oauth2_token_id=1541152877',
      videoFormat: BetterPlayerVideoFormat.hls
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(dataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HLS tracks"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Player with HLS stream which loads tracks from HLS."
                  " You can choose tracks by using overflow menu (3 dots in right corner).",
              style: TextStyle(fontSize: 16),
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(controller: _betterPlayerController),
          ),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Center(
  //           child: Text(
  //         'Projects',
  //         style: TextStyle(fontWeight: FontWeight.w800),
  //       )),
  //     ),
  //     body: BlocProvider(
  //       create: (_) => ProjectsBloc(locator(), locator()),
  //       child: SafeArea(
  //         child: BlocBuilder<ProjectsBloc, ProjectsState>(
  //             builder: (context, state) {
  //           var bloc = context.read<ProjectsBloc>();
  //
  //           return Column(
  //             children: [
  //               Expanded(
  //                   child: Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 18),
  //                 child: ListView.builder(
  //                   itemCount: state.projects.length,
  //                   itemBuilder: (context, i) {
  //                     EntityProject project = state.projects[i];
  //
  //                     return InkWell(
  //                       onTap: () {},
  //                       child: Padding(
  //                         padding: const EdgeInsets.symmetric(
  //                             horizontal: 48, vertical: 12),
  //                         child: Row(
  //                           children: [
  //                             Expanded(
  //                               child: Text(
  //                                 project.title,
  //                                 style: const TextStyle(
  //                                     fontSize: 16,
  //                                     fontWeight: FontWeight.w500),
  //                               ),
  //                             ),
  //                             const SizedBox(width: 12),
  //                             const Icon(
  //                               Icons.delete,
  //                               color: Colors.blueAccent,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     );
  //                   },
  //                 ),
  //               )),
  //               SizedBox(
  //                 height: 48,
  //                 width: double.infinity,
  //                 child: Center(
  //                   child: TextButton(
  //                       onPressed: () {
  //                         createProjectModal(context, onSaved: (project) {
  //                           print('invocke ko ${project.title}');
  //                           bloc.saveProject(project);
  //                         });
  //                       },
  //                       child: const Text('Create new project')),
  //                 ),
  //               )
  //             ],
  //           );
  //         }),
  //       ),
  //     ),
  //   );
  // }
}
