import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sundevs/application/comicbloc/comic_bloc.dart';
import 'package:sundevs/application/detailsbloc/details_bloc.dart';
import 'package:sundevs/core/service_locator.dart';
import 'package:sundevs/data/comic_repository.dart';
import 'package:sundevs/presentation/screens/pages/comic_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator(); // Initialize the service locator
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ComicBloc>(
          create: (context) => ComicBloc(serviceLocator<ComicRepository>()),
        ),
        BlocProvider<DetailsBloc>(
          create: (context) =>
              DetailsBloc(serviceLocator<ComicRepository>(), ''),
        ),
      ],
      child: ComicsPage(title: 'ComicBook'),
    );
  }
}
