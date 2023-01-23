import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:noucav/config.dart';

import '../../utils/mpesa_regex.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  final TextEditingController _mpesaMessageController = TextEditingController();

  MpesaMessageDetails? _mpesaMessageDetails;

  void _onMpesaMessageChanged() {
    try {
      _mpesaMessageDetails = processMpesaMessage(_mpesaMessageController.text);
    } on Exception catch (e) {
      log('Error processing mpesa message: $e');
    }
  }

  void _processMessage() {
    _mpesaMessageDetails = processMpesaMessage(_mpesaMessageController.text);
    print(_mpesaMessageDetails);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
      ),
      body: Column(children: [
        _mpesaMessageDetails != null
            ? Text('_mpesaMessageDetails: $_mpesaMessageDetails')
            : const SizedBox.shrink(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            onChanged: _onMpesaMessageChanged,
            child: Column(
              children: [
                TextFormField(
                    maxLines: 5,
                    controller: _mpesaMessageController,
                    decoration: Config.input(label: 'Mpesa Message')),
                ElevatedButton(
                  onPressed: _processMessage,
                  child: const Text('Process Message'),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
