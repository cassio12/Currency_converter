

class CoinModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;
  final double ether;
  final double peso;

  CoinModel(this.name, this.real, this.dolar, this.euro, this.bitcoin, this.ether, this.peso);

  static List<CoinModel> getCoins() {
    return <CoinModel>[
      CoinModel('Real', 1.0, 0.20, 0.20, 0.000016, 0.00012, 31.36),
      CoinModel('Dolar', 5.04, 1.0, 1.01, 0.000088, 0.00062, 158.29),
      CoinModel('Euro', 4.98, 0.99, 1.0, 0.000047, 0.00061, 156.23),
      CoinModel('Bitcoin', 104825.05, 20789.10, 21089.11, 1.0, 12.90, 3289650.55),
      CoinModel('Ether', 8135.82, 1610.32, 1634.11, 0.078, 1.0, 254851.82),
      CoinModel('Peso', 0.032, 0.0063, 0.0064, 3.0e-7, 0.0000039, 1.0)
    ];
  }


}


