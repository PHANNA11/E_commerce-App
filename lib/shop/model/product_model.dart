class ProductModel {
  int? id;
  String? name;
  String? description;
  String? image;
  bool? favorite;
  double? price;
  double? sellPrice;
  List<String>? imageVarraint;
  ProductModel(
      {this.id,
      this.name,
      this.favorite,
      this.image,
      this.description,
      this.price,
      this.sellPrice,
      this.imageVarraint});
  List<ProductModel> get products => [
        ProductModel(
            id: 1,
            name: 'Glass Water Bottle Crystal ',
            favorite: false,
            image:
                'https://s.alicdn.com/@sc04/kf/H1ca3dbf09220494cb580d83629bbc3c1P.jpg_720x720q50.jpg',
            description:
                'Glass Water Bottle Crystal Infused Gem Water Bottle Wellness 400ml Glass Water Bottle Wholesale Coloured Stone',
            price: 1.25,
            sellPrice: 0.75,
            imageVarraint: [
              'https://s.alicdn.com/@sc04/kf/H231a0db65c0547e18c3e8a5c1a8a59c73.jpg_720x720q50.jpg',
              'https://s.alicdn.com/@sc04/kf/H12af53581d904877b2e925d8e9bfcea39.jpg_720x720q50.jpg',
              'https://s.alicdn.com/@sc04/kf/H4fb0a9304db84b5bb663d9a6b1289846x.jpg_720x720q50.jpg',
            ]),
        ProductModel(
          id: 2,
          name: 'Y13 Smart Watch for Men Women BT ',
          favorite: false,
          image:
              'https://s.alicdn.com/@sc04/kf/Hbc050896cbb948a9942b86ff9e29445eZ.jpeg_720x720q50.jpg',
          description:
              'Y13 Smart Watch for Men Women BT Call Relogiosmartwatch Heart Rate Blood Pressure Oxygen Sport Fitness tracker H13 Smartwatch',
          price: 5.06,
          sellPrice: 4.40,
        ),
        ProductModel(
          id: 3,
          name: 'Factory Price Y13 Smart Watch',
          favorite: true,
          image:
              'https://s.alicdn.com/@sc04/kf/H794fd46a983f4efa8c2b889444784334u.jpg_720x720q50.jpg',
          description:
              'Factory Price Y13 Smart Watch 1.83inch BT Calling Sports Fitness tracker Men Watches Fitpro Reloj Pk H13 GT20 Smart Watches',
          price: 5.07,
          sellPrice: 5.07,
        ),
      ];
}
