class CartModel {
  final String title;
  final double total;
  final String? sliderImg;
  final int? discount;
  final String id;
  final String formula, genericName, companyName, imgLink;
  CartModel({
    required this.id,
    required this.title,
    required this.total,
    required this.formula,
    required this.companyName,
    required this.genericName,
    required this.imgLink,
    this.sliderImg,
    this.discount,
  });
  static List<CartModel> ItemList() {
    return [
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '0'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '1'),
      CartModel(
          // discount: null,
          title: 'Hygenix',
          total: 100,
          formula: 'Spray',
          companyName: 'Beacon Pharmaceuticals Limited',
          genericName: 'Ethyl Liquor + Hydrogen peroxide + Glycerol',
          imgLink:
              'https://cdn.osudpotro.com/thumb/medicine/untitled-1-1-removebg-preview-1629883271213.webp?w=256',
          sliderImg: sliderImgLink[0].toString(),
          id: '2'),
      CartModel(
          discount: 10,
          title: 'Surgical Face Mask (Melbon Mask)',
          total: 500,
          formula: 'Mask',
          companyName: 'NS Surgical',
          genericName: 'Mask',
          imgLink:
              'https://cdn.osudpotro.com/thumb/medicine/surgical-face-mask-melbon-mask-1637151747928.webp?w=256',
          sliderImg: sliderImgLink[1].toString(),
          id: '3'),
      CartModel(
          // discount: 0,
          title: 'Sepnil Extra Mild Hand Wash (Tea Oil) 200 ml',
          total: 99,
          formula: 'Hand Wash',
          companyName: 'Square Toiletries Limited',
          genericName:
              'Aqua, SLES, Coco diethanolamide, CAPB, Methylchloroisothiazolinone, DMDMH, Triclosan, Benzophenone-3, CI 19140, CI 74160, Tea Tree Oil, Perfume',
          imgLink:
              'https://cdn.osudpotro.com/products/sepnil-extra-mild-hand-wash-tea-oil-200-ml-1633954615501.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '4'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '5'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '6'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '7'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '8'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '9'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '10'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '11'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '12'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '13'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '14'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '15'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '16'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '17'),
      CartModel(
          discount: 18,
          title: 'Omenix',
          total: 200,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          sliderImg: sliderImgLink[0].toString(),
          id: '18'),
      CartModel(
          discount: 10,
          title: 'Napa',
          total: 500,
          formula: 'tablet',
          companyName: 'Beximco',
          genericName: 'Paracetamol 500mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
          sliderImg: sliderImgLink[1].toString(),
          id: '19'),
    ];
  }

  static List<CartModel> sliderImage() {
    return [
      CartModel(
          title: 'Omenix',
          total: 5.0,
          formula: 'Powder',
          companyName: 'Incepta Pharmaceuticals Ltd',
          genericName: 'Omeprazole BP 20 mg',
          imgLink:
              'https://cdn.osudpotro.com/medicine/omixen-20-1648701698716.webp',
          id: '1'),
      CartModel(
        title: 'Napa',
        total: 1.20,
        formula: 'tablet',
        companyName: 'Beximco',
        genericName: 'Paracetamol 500mg',
        imgLink:
            'https://cdn.osudpotro.com/medicine/napa-500-mg-1634182813132.webp',
        sliderImg: sliderImgLink[2].toString(),
        id: '2',
      ),
    ];
  }
}

List<String> sliderImgLink = [
  'https://nittoponno.shop/slider/1670569173.jpg',
  'https://nittoponno.shop/slider/1670569379.jpg',
  'https://nittoponno.shop/slider/1670569653.jpg',
  'https://nittoponno.shop/slider/1670569765.jpg',
];
