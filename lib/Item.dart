import 'package:flutter/material.dart';
import 'package:pagination/Model.dart';
import 'package:pagination/repogitory.dart';

class PostItem extends StatefulWidget {
  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ItemsData>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Text(snapshot.data!.data![index].id.toString()),
                          Text(snapshot.data!.data![index].name.toString()),
                          Text(snapshot.data!.data![index].distance.toString()),
                          Image.network(
                              snapshot.data!.data![index].image.toString()),
                        ],
                      );
                    },
                  )
                  // Text(snapshot.data!.data![3].image.toString()),
                ],
              ),
            );
          } else
            return CircularProgressIndicator();
        });
  }
}
