import 'package:flutter/material.dart';

void main() {
  runApp(TempConverterApp());
}

class TempConverterApp extends StatelessWidget {
  const TempConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TempConverterScreen(),
    );
  }
}

class TempConverterScreen extends StatefulWidget {
  const TempConverterScreen({super.key});

  @override
  _TempConverterScreenState createState() => _TempConverterScreenState();
}

class _TempConverterScreenState extends State<TempConverterScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String _selectedConversion = 'F to C';
  String _result = '';
  final List<String> _history = [];

  void _convertTemperature() {
    double inputTemp = double.tryParse(_controller.text) ?? 0.0;
    double convertedTemp;

    if (_selectedConversion == 'F to C') {
      convertedTemp = (inputTemp - 32) * 5 / 9;
    } else {
      convertedTemp = (inputTemp * 9 / 5) + 32;
    }

    setState(() {
      _result = convertedTemp.toStringAsFixed(2);
      _history.add('$_selectedConversion: $inputTemp => $_result');
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Temperature Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              focusNode: _focusNode,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter temperature',
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: const Text('F to C'),
                    value: 'F to C',
                    groupValue: _selectedConversion,
                    onChanged: (value) {
                      setState(() {
                        _selectedConversion = value.toString();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: const Text('C to F'),
                    value: 'C to F',
                    groupValue: _selectedConversion,
                    onChanged: (value) {
                      setState(() {
                        _selectedConversion = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _convertTemperature,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 20),
            Text('Result: $_result', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _history.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(_history[index]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}