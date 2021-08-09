import 'package:flutter/material.dart';
import 'package:interns_task_7/constants.dart';

import 'constants.dart';

List<phoneno> _list = phoneno.generatephone();

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IncomingPage(),
            OutgoingPage(),
            MissedPage(),
          ],
        ),
      ),
    );
  }
}

class IncomingPage extends StatelessWidget {
  const IncomingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CallData(
            _list[index].name, _list[index].phonenumber, Icons.call);
      },
      itemCount: _list.length,
    );
  }
}

class OutgoingPage extends StatelessWidget {
  const OutgoingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CallData(
            _list[index].name, _list[index].phonenumber, Icons.call_received);
      },
      itemCount: _list.length,
    );
  }
}

class MissedPage extends StatelessWidget {
  const MissedPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CallData(
            _list[index].name, _list[index].phonenumber, Icons.call_missed);
      },
      itemCount: _list.length,
    );
  }
}

class CallData extends StatelessWidget {
  CallData(this.name, this.phoneno, this.icun);
  IconData icun;
  String name, phoneno;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListTile(
        title: Text(name + '\n' + phoneno),
        trailing: Icon(icun),
      ),
    );
  }
}
