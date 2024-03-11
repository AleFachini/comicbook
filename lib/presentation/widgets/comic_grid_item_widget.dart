import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sundevs/core/utils/date_formats.dart';
import 'package:sundevs/data/utils/common_constants.dart';
import 'package:sundevs/domain/entities/issues/comic_issue_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ComicGridItem extends StatelessWidget {
  final ComicIssue? issue;
  final Function()? onPressed;

  const ComicGridItem({
    super.key,
    this.issue,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final title = issue?.name ?? 'Title Unavailable';
    final dateformatted = DateConversion().convertDate(issue!.dateAdded);
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Image.network(
              width: MediaQuery.of(context).size.width * 0.25,
              issue!.image.originalUrl,
              errorBuilder: (context, error, stackTrace) {
                print(stackTrace ?? 'Success Loading Image');
                return Image(
                  image: Svg(
                      '${CommonConstants.imagesPath}${CommonConstants.defaultContactIcon}'),
                );
              },
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                Text(' #${issue?.issueNumber}'),
              ],
            ),
          ),
          Text(
            dateformatted,
            style: CommonConstants.softText,
          ),
        ],
      ),
    );
  }
}
