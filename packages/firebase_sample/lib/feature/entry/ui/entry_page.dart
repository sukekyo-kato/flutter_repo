import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン画面'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Flexible(
              flex: 2,
              child: _Buttons(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: null, child: Text('匿名 ログイン')),
        ElevatedButton(onPressed: null, child: Text('Email ログイン')),
        ElevatedButton(onPressed: null, child: Text('Google ログイン')),
        ElevatedButton(onPressed: null, child: Text('Apple ログイン')),
        ElevatedButton(onPressed: null, child: Text('OpenID ログイン')),
      ],
    );
  }
}
