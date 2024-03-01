import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Dialog"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AboutDialog(
                      applicationIcon: FlutterLogo(),
                      applicationLegalese: "The Legalese",
                      applicationName: "Widgets Catalog",
                      applicationVersion: "v1.0.0",
                    ),
                  );
                },
                child: const Text("About Dialog"))
          ],
        ),
      ),
    );
  }
}
