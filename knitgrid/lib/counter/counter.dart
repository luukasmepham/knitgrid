import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Center(
          child: Row(
            children: [
              TextButton(
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 30.0,
                    semanticLabel: 'Substraction',
                  ),
                ),
                onPressed: () => setState(
                  () => counter -= 1,
                ),
              ),
              Expanded(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '$counter',
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.0,
                    semanticLabel: 'Add',
                  ),
                ),
                onPressed: () => setState(
                  () => counter += 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
