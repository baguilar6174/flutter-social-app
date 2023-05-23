import 'package:intl/intl.dart';

class FormatNumbers {
  static String readbleNumber(double number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }
}
