import 'package:intl/intl.dart';

extension IntExtension on int {
  String formatMoney() {
    if (this <= 0) return '—';
    final formatted = NumberFormat.compact(locale: 'en_EN').format(this);
    return '\$$formatted';
  }
}
