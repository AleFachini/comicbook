import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sundevs/application/detailsbloc/details_bloc.dart';
import 'package:sundevs/presentation/screens/views/details_view.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/detailsPage';

  late final String title;
  late final String detailUrl;

  DetailsPage({Key? key, required this.title, required this.detailUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<DetailsBloc>().initialize(detailUrl);
    return BlocConsumer<DetailsBloc, DetailState>(
      listener: (context, state) async {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              title,
              style: GoogleFonts.titilliumWeb().copyWith(fontSize: 24),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            centerTitle: true,
          ),
          body: Detailsview(
            bloc: context.read<DetailsBloc>(),
          ),
        );
      },
    );
  }
}
