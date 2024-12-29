import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_test/cubit/temperature_cubit.dart';

class TemperatureCubitView extends StatelessWidget {
  const TemperatureCubitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController inputController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter temperature',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final double value = double.tryParse(inputController.text) ?? 0.0;
                    context.read<TemperatureCubit>().convertToFahrenheit(value);
                  },
                  child: const Text('To Fahrenheit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final double value = double.tryParse(inputController.text) ?? 0.0;
                    context.read<TemperatureCubit>().convertToCelsius(value);
                  },
                  child: const Text('To Celsius'),
                ),
              ],
            ),
            const SizedBox(height: 32),
            BlocBuilder<TemperatureCubit, TemperatureState>(
              builder: (context, state) {
                return Column(
                  children: [
                    if (state.celsius != null)
                      Text('Celsius: ${state.celsius!.toStringAsFixed(2)} °C'),
                    if (state.fahrenheit != null)
                      Text('Fahrenheit: ${state.fahrenheit!.toStringAsFixed(2)} °F'),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
