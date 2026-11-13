enum Gender(this.value) {
  unknown(0),
  female(1),
  male(2);

  final int value;

  static Gender fromInt(int? value) =>
      values.firstWhere((e) => e.value == value, orElse: () => unknown);
}
