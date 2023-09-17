import 'package:flutter/material.dart';

class CurrencyConverterMaterialPagee extends StatefulWidget {
  const CurrencyConverterMaterialPagee({super.key});
  @override
  State<CurrencyConverterMaterialPagee> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPagee> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text('Currency Convertor'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "INR ${result.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: TextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Please Enter The Amount in USD",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        elevation: 15,
                        // overlayColor: Colors.blueGrey,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        minimumSize: const Size(double.infinity, 50),
                        textStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                    onPressed: () {
                      try {
                        setState(() {
                          result =
                              double.parse(textEditingController.text) * 81;
                        });
                      } on Exception {
                        result = 0;
                      }
                    },
                    child: const Text('Click Me')),
              ),
            ],
          ),
        ));
  }
}

// class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});

  
// }
