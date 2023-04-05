import 'package:auto_route/auto_route.dart';
import 'package:ems/privatePages/test.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

@RoutePage(name: 'HomeSinglePageRouter')
class HomeSinglePage extends StatelessWidget {
  final int pageId;

  const HomeSinglePage({super.key, @PathParam('pageId') required this.pageId});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: LazyLoadIndexedStack(
          index: pageId,
          children: const [
            TextPage(),
          ],
        ));
  }
}
