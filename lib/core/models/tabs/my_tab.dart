class MyTab {
  final String title;
  final bool isSelected;

  MyTab({
    required this.title,
    this.isSelected = false,
  });

  MyTab copyWith({
    String? title,
    bool? isSelected,
  }) {
    return MyTab(
      title: title ?? this.title,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
