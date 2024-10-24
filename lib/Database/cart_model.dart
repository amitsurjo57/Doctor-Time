class Cart {
  late final int? id;
  final String? product_id;
  final String? product_image_path;
  final String? product_name;
  final int? product_piece;
  final String? product_type;
  final dynamic total_price;

  Cart({
    required this.id,
    required this.product_id,
    required this.product_image_path,
    required this.product_name,
    required this.product_piece,
    required this.product_type,
    required this.total_price,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res["id"],
        product_id = res["product_id"],
        product_image_path = res["product_image_path"],
        product_name = res["product_name"],
        product_piece = res["product_piece"],
        product_type = res["product_type"],
        total_price = res["total_price"];

  Map<String, Object?> toMap() {
    return {
      "id": id,
      "product_id": product_id,
      "product_image_path": product_image_path,
      "product_name": product_name,
      "product_piece": product_piece,
      "product_type": product_type,
      "total_price": total_price,
    };
  }
}
