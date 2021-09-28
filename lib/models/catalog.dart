class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Asus Zenfone Max Pro M1",
        desc: "6 gb ram 64 storage",
        price: 15000,
        color: "#000",
        image:
            "https://www.91-img.com/gallery_images_uploads/e/d/edabe34bcfd8e229c7b26b4163a76f0ada873979.jpg?w=0&h=901&q=80&c=1")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
