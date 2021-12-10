import 'package:flutter/material.dart';

class RegisterUserPageView extends StatelessWidget {
  const RegisterUserPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ユーザー追加画面"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                    hintText: "ログインID", labelText: "ログインID"),
                validator: (value) {
                  if (value == null) {
                    return "ログインIDが空です";
                  }
                },
              ),
              TextFormField(
                controller: TextEditingController(),
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "パスワード", labelText: "パスワード"),
                validator: (value) {
                  if (value == null) {
                    return "パスワードが空です";
                  }
                },
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.pop(context),
                  },
                  child: const Text("登録"),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
