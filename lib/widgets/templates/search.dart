import 'package:flutter/material.dart';
import 'package:spacia/app_style.dart';


class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: kGradBorder, width: 2),
        ),
        child: Column(
          children: [
            Text(
              "Search for travels",
              style: poppinsSemiBold.copyWith(color: kBlack900),
            ),
            const SizedBox(height: 26),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: txtBox.copyWith(
                hintText: "From Location",
                prefixIcon: const Icon(Icons.location_searching),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: txtBox.copyWith(
                hintText: "Destination",
                prefixIcon: const Icon(Icons.flag),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: btnStyle.copyWith(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 17),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Search",
                  style: poppinsRegular,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
