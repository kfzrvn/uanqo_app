class CurrencyRate {
  final String baseCode;
  final Map<String, dynamic> conversionRates;

  CurrencyRate({required this.baseCode, required this.conversionRates});

  factory CurrencyRate.fromJson(Map<String, dynamic> json) {
    return CurrencyRate(
      baseCode: json['base_code'],
      conversionRates: json['conversion_rates'],
    );
  }
}
