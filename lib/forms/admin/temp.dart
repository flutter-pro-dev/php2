import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:society/forms/admin/admin_society_details.dart';
import 'package:society/login/login_screen.dart';
import '../../login/login_screen_mob.dart';
import '../../utils/constants/constants.dart';

class DropdownCheckbox extends StatefulWidget {
  final List<String> options;
  final VoidCallback submit;

  const DropdownCheckbox({required this.options, required this.submit});

  @override
  _DropdownCheckboxState createState() => _DropdownCheckboxState();
}

class _DropdownCheckboxState extends State<DropdownCheckbox> {
  bool _isDropdownOpen = false;
  List<String> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print(_isDropdownOpen);
              setState(() {
                _isDropdownOpen = !_isDropdownOpen;
              });
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedOptions.isNotEmpty
                        ? _selectedOptions.join(', ')
                        : 'Select options',
                  ),
                  Icon(
                    _isDropdownOpen
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),
          if (_isDropdownOpen)
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: widget.options.map((option) {
                  return CheckboxListTile(
                    title: Text(option),
                    value: _selectedOptions.contains(option),
                    onChanged: (value) {
                      setState(() {
                        if (value != null && value) {
                          setState(() {});
                          _selectedOptions.add(option);
                        } else {
                          setState(() {});
                          _selectedOptions.remove(option);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          SizedBox(height: 50),
          InkWell(
            onTap: () async {
              widget.submit();
              log("prssed temp");
            },
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: 0 < _selectedOptions.length ? kblue : Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardTextComponent extends StatelessWidget {
  final String text;
  const CardTextComponent({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black54),
      ),
    );
  }
}
