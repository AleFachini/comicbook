import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:sundevs/application/detailsbloc/details_bloc.dart';
import 'package:sundevs/data/utils/common_constants.dart';
import 'package:sundevs/domain/entities/details/results_model.dart';

class Detailsview extends StatelessWidget {
  final DetailsBloc bloc;

  const Detailsview({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ResultsModel>(
      stream: bloc.detailStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final currentDetails = snapshot.data;
          final currentCharacters =
              currentDetails?.characterCredits ?? List.empty();
          final currentTeams = currentDetails?.teamCredits ?? List.empty();
          final currentLocations =
              currentDetails?.locationCredits ?? List.empty();
          return OrientationBuilder(builder: (context, orientation) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MediaQuery.of(context).size.width > 480 ||
                        (orientation == Orientation.landscape)
                    ? Column(children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Characters',
                                    style: CommonConstants.boldText,
                                  ),
                                  const Divider(),
                                  ...currentCharacters.map(
                                    (element) => TileDetail(
                                      name: element.name ?? '',
                                      iconUrl: element.apiDetailUrl ?? '',
                                    ),
                                  ),
                                  Text(
                                    'Teams',
                                    style: CommonConstants.boldText,
                                  ),
                                  const Divider(),
                                  ...currentTeams.map(
                                    (element) => TileDetail(
                                      name: element.name ?? '',
                                      iconUrl: element.apiDetailUrl ?? '',
                                    ),
                                  ),
                                  if (currentTeams.isEmpty)
                                    Text(
                                      'Unavailable',
                                      style: CommonConstants.boldTextGreen,
                                    ),
                                  Text(
                                    'Locations',
                                    style: CommonConstants.boldText,
                                  ),
                                  const Divider(),
                                  ...currentLocations.map(
                                    (element) => TileDetail(
                                      name: element.name ?? '',
                                      iconUrl: element.apiDetailUrl ?? '',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Image.network(
                                    currentDetails?.image?.originalUrl ?? ''),
                              ),
                            ),
                          ],
                        ),
                      ])
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Characters',
                            style: CommonConstants.boldText,
                          ),
                          const Divider(),
                          ...currentCharacters.map(
                            (element) => TileDetail(
                              name: element.name as String,
                              iconUrl: element.apiDetailUrl ?? '',
                            ),
                          ),
                          if (currentCharacters.isEmpty)
                            Text(
                              'Unavailable',
                              style: CommonConstants.boldTextGreen,
                            ),
                          Text(
                            'Teams',
                            style: CommonConstants.boldText,
                          ),
                          const Divider(),
                          ...currentTeams.map(
                            (element) => TileDetail(
                              name: element.name as String,
                              iconUrl: element.apiDetailUrl ?? '',
                            ),
                          ),
                          if (currentTeams.isEmpty)
                            Text(
                              'Unavailable',
                              style: CommonConstants.boldTextGreen,
                            ),
                          Text(
                            'Locations',
                            style: CommonConstants.boldText,
                          ),
                          const Divider(),
                          ...currentLocations.map(
                            (element) => TileDetail(
                              name: element.name as String,
                              iconUrl: element.apiDetailUrl ?? '',
                            ),
                          ),
                          if (currentLocations.isEmpty)
                            Text(
                              'Unavailable',
                              style: CommonConstants.boldTextGreen,
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Image.network(
                                currentDetails?.image?.originalUrl ?? ''),
                          ),
                        ],
                      ),
              ),
            );
          });
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class TileDetail extends StatelessWidget {
  final String name;
  final String iconUrl;
  const TileDetail({
    super.key,
    required this.name,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          iconUrl,
          errorBuilder: (context, error, stackTrace) {
            print(stackTrace ?? 'Error Loading Image');
            return Image(
              width: MediaQuery.of(context).size.width * 0.05,
              image: Svg(
                  '${CommonConstants.imagesPath}${CommonConstants.defaultContactIcon}'),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            name,
            style: CommonConstants.boldTextGreen,
          ),
        ),
      ],
    );
  }
}
