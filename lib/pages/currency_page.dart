import 'package:flutter/material.dart';
import 'package:uanqo_app/models/currency_rate.dart';
import 'package:uanqo_app/models/api_service.dart';

class CurrencyPage extends StatefulWidget {
  @override
  _CurrencyPageState createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  late Future<CurrencyRate> futureCurrencyRate;

  @override
  void initState() {
    super.initState();
    futureCurrencyRate = fetchCurrencyRates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Rates', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey[700],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: FutureBuilder<CurrencyRate>(
          future: futureCurrencyRate,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.conversionRates.length,
                itemBuilder: (context, index) {
                  String currency =
                      snapshot.data!.conversionRates.keys.elementAt(index);
                  double rate = snapshot.data!.conversionRates[currency]!
                      .toDouble(); // Konversi ke double
                  return ListTile(
                    title: Text(currency),
                    subtitle: Text(rate.toString()),
                  );
                },
              );
            } else {
              return Text('No data found');
            }
          },
        ),
      ),
    );
  }
}
