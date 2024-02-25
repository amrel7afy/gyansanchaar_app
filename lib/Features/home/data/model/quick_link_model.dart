class QuickLinksCardModel {
  final String icon;
  final String title;

  QuickLinksCardModel({
    required this.icon,
    required this.title,
  });

  static final List<QuickLinksCardModel> quickLinksCardModels = [
    QuickLinksCardModel(
      icon: 'assets/images/course_registration_icon.svg',
      title: 'Course Registration',
    ),

    QuickLinksCardModel(
      icon: 'assets/images/test_papers_icon.svg',
      title: 'Test Papers',
    ),
    QuickLinksCardModel(
      icon: 'assets/images/results_icon.svg',
      title: 'Results',
    ),
    QuickLinksCardModel(
      icon: 'assets/images/online_textbooks_icon.svg',
      title: 'Online textbooks',
    ),
  ];
}