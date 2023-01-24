class CheckOutData {
  final String title, subtitle, details, imgLink;
  final String id;
  final double price;
  CheckOutData(
      {required this.title,
      required this.subtitle,
      required this.details,
      required this.id,
      required this.price,
      required this.imgLink});
  static List<CheckOutData> listOfData = [
    CheckOutData(
        title: 'Name',
        subtitle: 'subtitle',
        details: 'details',
        id: '12',
        price: 12.5,
        imgLink:
            'https://play-lh.googleusercontent.com/RTG1DJ1c0I9SWN0WMNABOENLGzwO9kreB2Cb5RZcW-3eDalUx102pDGyw8tkcTIlr_I'),
    CheckOutData(
        title: 'Name',
        subtitle: 'subtitle',
        details: 'details',
        id: '13',
        price: 12.5,
        imgLink:
            'https://play-lh.googleusercontent.com/RTG1DJ1c0I9SWN0WMNABOENLGzwO9kreB2Cb5RZcW-3eDalUx102pDGyw8tkcTIlr_I'),
    CheckOutData(
        title: 'Name',
        subtitle: 'subtitle',
        details: 'details',
        id: '14',
        price: 12.5,
        imgLink:
            'https://play-lh.googleusercontent.com/RTG1DJ1c0I9SWN0WMNABOENLGzwO9kreB2Cb5RZcW-3eDalUx102pDGyw8tkcTIlr_I'),
    CheckOutData(
        title: 'Name',
        subtitle: 'subtitle',
        details: 'details',
        id: '15',
        price: 12.5,
        imgLink:
            'https://play-lh.googleusercontent.com/RTG1DJ1c0I9SWN0WMNABOENLGzwO9kreB2Cb5RZcW-3eDalUx102pDGyw8tkcTIlr_I'),
  ];
}
