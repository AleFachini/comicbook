import 'package:intl/intl.dart';

class DateConversion extends DateFormat {
  String convertDate(String currentDate) {
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(currentDate);

    var outputFormat = DateFormat('MMMM d, yyyy');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }
}
