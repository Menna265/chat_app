import 'package:chat/features/status/presentation/views/widgets/myStatus_widget.dart';
import 'package:chat/features/status/presentation/views/widgets/recentUpdate_widget.dart';
import 'package:chat/features/status/presentation/views/widgets/viewedUpdate_widget.dart';
import 'package:flutter/material.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MystatusWidget(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Recent updates",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        ),
        RecentupdateWidget(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Viewed updates",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        ),
        ViewedupdateWidget()
      ],
    );
  }
}
