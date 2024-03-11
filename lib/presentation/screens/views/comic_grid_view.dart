import 'package:flutter/material.dart';
import 'package:sundevs/application/comicbloc/comic_bloc.dart';
import 'package:sundevs/domain/entities/issues/comic_issue_model.dart';
import 'package:sundevs/presentation/screens/pages/details_page.dart';
import 'package:sundevs/presentation/widgets/comic_grid_item_widget.dart';

class ComicGridView extends StatelessWidget {
  final ComicBloc bloc;

  const ComicGridView({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ComicIssue>>(
      stream: bloc.comicsListStream,
      builder: (context, snapshot) {
        if (bloc.currentList.isEmpty) {
          return const Center(
            child: Text('No Issues Found'),
          );
        }
        return GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            bloc.currentList.length,
            (index) {
              return ComicGridItem(
                onPressed: () {
                  Navigator.push(context,
                      _customRoute(bloc.currentList[index].apiDetailUrl));
                },
                issue: bloc.currentList[index],
              );
            },
          ),
        );
      },
    );
  }
}

Route _customRoute(String detailUrl) {
  return PageRouteBuilder(
    transitionDuration: Duration.zero,
    pageBuilder: (context, animation, secondaryAnimation) => DetailsPage(
      title: 'ComicBook',
      detailUrl: detailUrl,
    ),
  );
}
