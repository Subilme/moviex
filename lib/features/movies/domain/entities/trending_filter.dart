enum const TrendingFilter(this.label, this.apiValue) {
  day('Сегодня', 'day'),
  week('На этой неделе', 'week');

  final String label;
  final String apiValue;
}
