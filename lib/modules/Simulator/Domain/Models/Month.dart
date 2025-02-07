class Month {
  final String label;
  late final bool selected;

  Month({required this.label, required this.selected});

  @override
  String toString() {
    return "${this.label}, ${this.selected}";
  }


  @override
  bool operator == (Object other) {
    return other is Month && other.label == label && other.selected == selected;
  }
}
