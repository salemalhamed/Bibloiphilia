import 'package:biblophila2/core/views/screens/payment/parcod.dart';
import 'package:flutter/material.dart';

class Paymentscreen extends StatefulWidget {
  final double amount;

  const Paymentscreen({super.key, required this.amount});

  @override
  State<Paymentscreen> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<Paymentscreen> {
  showBottomSheet3(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ParcodeScreen();
      },
    );
  }

  final _formKey = GlobalKey<FormState>();
  String _cardNumber = '';
  String _expiryDate = '';
  String _cvv = '';

  Future<void> _submitPayment() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final paymentService =
          PaymentService(); // Replace with actual implementation
      final result = await paymentService.processPayment(
          amount: widget.amount,
          cardNumber: _cardNumber,
          expiryDate: _expiryDate,
          cvv: _cvv);
      if (result) {
        // Payment successful
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Payment successful!')),
        );
        Navigator.pop(context); // Navigate back after successful payment
      } else {
        // Payment failed
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Payment failed. Please try again.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF9327D5),
          title: const Text('الدفع'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Card Number'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'رجاء ادخل رقم البطاقة';
                      }
                      return null;
                    },
                    onSaved: (value) => _cardNumber = value!,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Expiry Date'),
                          keyboardType: TextInputType.datetime,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'رجاء ادخل تاريخ الانتهاء';
                            }
                            return null;
                          },
                          onSaved: (value) => _expiryDate = value!,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(labelText: 'CVV'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'رجاء ادخل cvv';
                            }
                            return null;
                          },
                          onSaved: (value) => _cvv = value!,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  InkWell(
                    onTap: () {
                      showBottomSheet3(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'اشتري تذكرتك (SAR ${100})',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Color(0xFF9327d5),
                          border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Placeholder class for payment processing
class PaymentService {
  Future<bool> processPayment({
    required double amount,
    required String cardNumber,
    required String expiryDate,
    required String cvv,
  }) async {
    // Implement actual payment processing logic using a specific payment gateway
    // This is a dummy implementation that simulates a successful transaction
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }
}
