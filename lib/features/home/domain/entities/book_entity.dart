class BookEntity {
  final String id;
  final String? image;
  final String title;
  final String authorName;
  final num price;
  final num rating;

  BookEntity(
      {required this.id,
      required this.image,
      required this.title,
      required this.authorName,
      required this.price,
      required this.rating});
}
