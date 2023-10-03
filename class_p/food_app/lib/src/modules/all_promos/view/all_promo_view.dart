import 'package:flutter/material.dart';
import 'package:json_test/src/modules/all_promos/local_widgets/single_promo_content.dart';

class AllPromoView extends StatefulWidget {
  const AllPromoView({super.key});

  @override
  State<AllPromoView> createState() => _AllPromoViewState();
}

class _AllPromoViewState extends State<AllPromoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Promos'),
      ),
      body: const Column(children: [
        SinglePromWidget(),
      ]),
    );
  }
}
