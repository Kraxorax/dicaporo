import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildButton(1),
            _buildButton(2),
            _buildAccentuatedButton(3),
            _buildButton(4),
            _buildButton(5),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(int number) {
    return TextButton(
      onPressed: () {},
      child: Text(
        '$number',
        style: const TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }

  Widget _buildAccentuatedButton(int number) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Text(
        '$number',
        style: const TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
