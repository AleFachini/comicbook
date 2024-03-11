import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sundevs/application/comicbloc/comic_bloc.dart';
import 'package:sundevs/data/utils/common_constants.dart';
import 'package:sundevs/presentation/screens/views/comic_grid_view.dart';
import 'package:sundevs/presentation/screens/views/comic_list_view.dart';

class ComicsPage extends StatelessWidget {
  late final String title;
  ComicsPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sundevs Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: BlocConsumer<ComicBloc, ComicsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                title,
                style: GoogleFonts.titilliumWeb().copyWith(fontSize: 24),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.zero,
                child: BottomAppBar(
                  bloc: context.read<ComicBloc>(),
                ),
              ),
            ),
            body: ViewSelector(
              bloc: context.read<ComicBloc>(),
            ),
          );
        },
      ),
    );
  }
}

class ViewSelector extends StatelessWidget {
  final ComicBloc bloc;

  const ViewSelector({
    super.key,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return bloc.layout == CommonConstants.listLayout
        ? ComicListView(bloc: bloc)
        : ComicGridView(bloc: bloc);
  }
}

class BottomAppBar extends StatelessWidget {
  final ComicBloc bloc;

  const BottomAppBar({
    super.key,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    final isLayoutList =
        context.read<ComicBloc>().layout == CommonConstants.listLayout
            ? true
            : false;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Text(
                'Latest Issues',
                style: CommonConstants.boldText,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.read<ComicBloc>().toggleLayout();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.view_list,
                      color: isLayoutList ? null : Colors.green,
                    ),
                    Text(
                      'List',
                      style: CommonConstants.boldText.copyWith(
                        color: isLayoutList ? null : Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<ComicBloc>().toggleLayout();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.view_module,
                      color: isLayoutList ? Colors.green : null,
                    ),
                    Text(
                      'Grid',
                      style: CommonConstants.boldText.copyWith(
                        color: isLayoutList ? Colors.green : null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 0.5,
          color: Theme.of(context).shadowColor,
        ),
      ],
    );
  }
}
