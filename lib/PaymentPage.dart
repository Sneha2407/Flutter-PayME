import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Payment Page'),
          backgroundColor: Colors.purple,
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios), 
          onPressed: () {Navigator.pop(context);}),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text("Add a credit card or debit card",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text(
                  "Enter your Credit/Debit card details so we can save it and you can use it later. We accept Visa, Mastercard, American Express, Discover, JCB, Diners Club, and UnionPay"),
              const SizedBox(height: 20),
              const Text("Card Number*"),
              const SizedBox(height: 5),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hoverColor: Colors.purple,
                  labelText: '0000 0000 0000 0000',
                ),
              ),
              const SizedBox(height: 20),
              const Text("Cardholder Name*"),
              const SizedBox(height: 5),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'John Doe',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Expiration Date*"),
                        SizedBox(height: 5),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'MM/YYYY',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("CVV*"),
                        SizedBox(height: 5),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '000',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, top: 17),
                  child: SizedBox(
                    height: 50,
                    width: 380,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0XFF362477),
                                // Color(0XFF362477),
                                Color(0XFFB130AA),
                              ]),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "SAVE CARD",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Colors.white,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
