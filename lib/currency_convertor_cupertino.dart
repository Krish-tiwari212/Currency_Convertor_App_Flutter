import 'package:flutter/cupertino.dart';

class CurrencyConvertorStatefulWidget extends StatefulWidget {
  const CurrencyConvertorStatefulWidget({super.key});

  @override
  State<CurrencyConvertorStatefulWidget> createState() =>
      _CurrencyConvertorStatefulWidgetState();
}

class _CurrencyConvertorStatefulWidgetState
    extends State<CurrencyConvertorStatefulWidget> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle: Text('Currency Convertor'),
        ),
        backgroundColor: CupertinoColors.systemGrey3,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "INR ${result.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: CupertinoColors.white),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: CupertinoTextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  placeholder: 'Please Enter The Amount in USD',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: CupertinoButton(
                    color: CupertinoColors.black,
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
                    child: const Text(
                      'Click Me',
                      style: TextStyle(
                        color: CupertinoColors.white,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
