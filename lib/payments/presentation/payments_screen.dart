import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noucav/config.dart';

import '../../utils/mpesa_regex.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  final TextEditingController _mpesaMessageController = TextEditingController();

  void _onMpesaMessageChanged() {
    try {
      processMpesaMessage(_mpesaMessageController.text);
    } on Exception catch (e) {
      log('Error processing mpesa message: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
      ),
      body: Column(children: [
        Form(
          onChanged: _onMpesaMessageChanged,
          child: TextFormField(
              minLines: 3,
              controller: _mpesaMessageController,
              decoration: Config.input(label: 'Mpesa Message')),
        )
      ]),
    );
  }
}
