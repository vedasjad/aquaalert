class DropDownOptionAttributes {
  final String title;
  final bool? isSelected;

  DropDownOptionAttributes({
    required this.title,
    this.isSelected,
  });

  DropDownOptionAttributes copyWith({
    String? title,
    bool? isSelected,
  }) {
    return DropDownOptionAttributes(
      title: title ?? this.title,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
