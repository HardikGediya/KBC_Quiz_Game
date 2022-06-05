class Questions {
  final String que;

  Questions({
    required this.que,
  });
}

class Options {
  final String opA;
  final String opB;
  final String opC;
  final String opD;
   String? ans;
  String? rupees;

  Options({
    required this.opA,
    required this.opB,
    required this.opC,
    required this.opD,
    this.ans,
    this.rupees,
  });
}

class Rupess{
  int rup;
  Rupess({required this.rup});
}




