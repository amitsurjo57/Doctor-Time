import 'package:flutter/material.dart';

import '../Doctor Page/Search System/search_bar.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              blurStyle: BlurStyle.solid,
              color: Colors.black38,
            )
          ],
        ),
        child: TextField(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const search_bar(),
            ),
          ),
          textAlign: TextAlign.start,
          readOnly: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: "Search doctor by name",
            alignLabelWithHint: true,
            hintFadeDuration: Duration(milliseconds: 300),
            contentPadding: EdgeInsets.only(left: 25, top: 10),
          ),
        ),
      ),
    );
  }
}
