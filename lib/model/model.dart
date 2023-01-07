class CartModel {
  final String title;
  final double total;
  final String formula, genericName, companyName, imgLink;
  CartModel(
      {required this.title,
      required this.total,
      required this.formula,
      required this.companyName,
      required this.genericName,
      required this.imgLink});
  static List<CartModel> ItemList() {
    return [
      CartModel(
          title: 'Omenix',
          total: 5.0,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp'),
      CartModel(
          title: 'Napa',
          total: 1.20,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp'),
    ];
  }
}
