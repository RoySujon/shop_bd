class DataSet {
  int? count;
  // static int? total;
  DataSet({this.count});
  // DataSet({});
}

class ValueCount {
  static DataSet counts = DataSet(count: 0);
}
