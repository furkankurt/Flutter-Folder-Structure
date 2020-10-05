import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

// Extensions kisminda da ayri bir yazi yazacagim.

extension DateExtensions on DateTime {
  formatDate(format) {
    initializeDateFormatting('tr');
    if (this == null) return this;
    return DateFormat(format, 'tr_TR').format(this);
  }
}
