extension ImageUrlExtension on String {
  String get generateUrl => 'https://image.tmdb.org/t/p/original/$this';
}
