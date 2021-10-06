class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.16, bitcoin: 0.0000039),
      CurrencyModel(
          name: 'Dolar', real: 5.52, dolar: 1.0, euro: 0.87, bitcoin: 0.000019),
      CurrencyModel(
          name: 'Euro', real: 6.37, dolar: 1.15, euro: 1.0, bitcoin: 0.00021),
      CurrencyModel(
          name: 'Bitcoin',
          real: 297501.43,
          dolar: 53902.10,
          euro: 47727.46,
          bitcoin: 1.0),
    ];
  }
}
