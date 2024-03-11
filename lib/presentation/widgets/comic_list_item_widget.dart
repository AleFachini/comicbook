import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sundevs/core/utils/date_formats.dart';
import 'package:sundevs/data/utils/common_constants.dart';
import 'package:sundevs/domain/entities/issues/comic_issue_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ComicListItem extends StatelessWidget {
  final ComicIssue? issue;
  final Function()? onPressed;
  final bool separator;
  const ComicListItem({
    super.key,
    this.issue,
    this.onPressed,
    this.separator = false,
  });

  @override
  Widget build(BuildContext context) {
    final title = issue?.name ?? 'Title Unavailable';
    final dateformatted = DateConversion().convertDate(issue!.dateAdded);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Image.network(
                    issue!.image.originalUrl,
                    errorBuilder: (context, error, stackTrace) {
                      print(stackTrace ?? 'Error Loading Image');
                      return Image(
                        image: Svg(
                            '${CommonConstants.imagesPath}${CommonConstants.defaultContactIcon}'),
                      );
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      children: [
                        Text(title),
                        Text(' #${issue?.issueNumber}'),
                      ],
                    ),
                    Text(
                      dateformatted,
                      style: CommonConstants.softText,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: separator
                ? Container(
                    width: double.maxFinite,
                    height: 1.0,
                    color: Theme.of(context).dividerColor.withOpacity(0.5),
                  )
                : const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
