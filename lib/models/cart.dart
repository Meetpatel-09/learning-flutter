import 'package:helloworld/core/store.dart';
import 'package:helloworld/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

  // collection of IDs - stores IDs of each item
  final List<int> itemIds = [];

  // get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatelog) {
    // ignore: unnecessary_null_comparison
    assert(newCatelog != null);
    _catalog = newCatelog;
  }

  // get items in the cart
  List<Item> get items => itemIds.map((id) => _catalog.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add item

  void add(Item item) {
    itemIds.add(item.id);
  }

  // remove item
  void remove(Item item) {
    itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart.itemIds.add(item.id);
  }
}
