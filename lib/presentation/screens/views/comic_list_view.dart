import 'package:flutter/material.dart';
import 'package:sundevs/application/comicbloc/comic_bloc.dart';
import 'package:sundevs/domain/entities/issues/comic_issue_model.dart';
import 'package:sundevs/presentation/screens/pages/details_page.dart';
import 'package:sundevs/presentation/widgets/comic_list_item_widget.dart';

class ComicListView extends StatelessWidget {
  final ComicBloc bloc;

  const ComicListView({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<List<ComicIssue>>(
        stream: bloc.comicsListStream,
        builder: (context, snapshot) {
          if (snapshot.hasData || bloc.currentList.isNotEmpty) {
            if (snapshot.data?.isEmpty ?? bloc.currentList.isEmpty) {
              return const Center(
                child: Text('No Issues Found'),
              );
            }
            return Expanded(
              child: ListView.builder(
                itemCount: snapshot.data?.length ?? bloc.currentList.length,
                itemBuilder: (context, index) {
                  final detailsUrl = snapshot.data?[index].apiDetailUrl ??
                      bloc.currentList[index].apiDetailUrl;
                  return ComicListItem(
                    separator: true,
                    issue: snapshot.data?[index] ?? bloc.currentList[index],
                    onPressed: () {
                      Navigator.push(context, _customRoute(detailsUrl));
                    },
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
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
