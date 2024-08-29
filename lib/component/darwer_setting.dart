import 'package:flutter/material.dart';


class DarwerSetting extends StatefulWidget {
  const DarwerSetting({super.key});

  @override
  State<DarwerSetting> createState() => _DarwerSettingState();
}

class _DarwerSettingState extends State<DarwerSetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.white,
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            );
  }
}