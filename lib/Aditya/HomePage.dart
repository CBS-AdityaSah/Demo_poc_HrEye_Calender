import 'package:flutter/material.dart';
import 'EasyInfiniteDateTimeLineExample.dart';
import 'InfiniteItemBuilderExample.dart';
import 'examples.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 32.0),
            EasyInfiniteDateTimeLineExample(),
            Divider(height: 32),
            SizedBox(height: 32.0),

            InfiniteItemBuilderExample(),
            Divider(height: 32),
            SizedBox(height: 32.0),

            BasicExample(),
            SizedBox(height: 32.0),
            CustomBackgroundExample(),
            SizedBox(height: 32.0),
            ChangeTodyHighlightColorExample(),
            SizedBox(height: 32.0),
            ChangeDayStructureExample(),
            SizedBox(height: 32.0),
            LandscapeViewExample(),
            SizedBox(height: 32.0),
            LocalSupportExample(),
            SizedBox(height: 32.0),
            ChangeHeaderAppearanceExample(),
            SizedBox(height: 32.0),
            EasyDateTimeLineItemBuilderExample(),
            SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
