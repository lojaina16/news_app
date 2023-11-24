import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';
import 'package:news/model/SourceResponse.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News app", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      body: FutureBuilder<SourceResponse>(
        future: ApiManager.getSources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("something went wrong"),
                ElevatedButton(onPressed: () {}, child: Text("Try Again")),
              ],
            );
          }
          if (snapshot.data?.status != "ok") {
            return Column(
              children: [
                Text(snapshot.data?.message ?? ""),
                ElevatedButton(onPressed: () {}, child: Text("Try Again")),
              ],
            );
          }
          var sourceList = snapshot.data?.sources ?? [];
          return ListView.builder(
            itemBuilder: (context, index) {
              return Text(sourceList[index].name ?? "");
            },
            itemCount: sourceList.length,
          );
        },
      ),
    );
  }
}
