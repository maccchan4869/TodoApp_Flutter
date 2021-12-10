import 'package:flutter/material.dart';
import 'package:todo/view/register_user_page/register_user_page_view.dart';
import 'package:todo/view/todo_list_page/todo_list_page_view.dart';

class LoginPageView extends StatelessWidget {
  LoginPageView({Key? key}) : super(key: key);

  // 入力値
  final _id = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDoアプリ"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _id,
                decoration: const InputDecoration(
                    hintText: "ログインID", labelText: "ログインID"),
                validator: (value) {
                  if (value == null) {
                    return "ログインIDが空です";
                  }
                },
              ),
              TextFormField(
                controller: _password,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TodoListPageView();
                    })),
                  },
                  // onPressed: () async {
                  //   try {
                  //     // メール/パスワードでログイン
                  //     final FirebaseAuth auth = FirebaseAuth.instance;
                  //     await auth.signInWithEmailAndPassword(
                  //       email: _id.text,
                  //       password: _password.text,
                  //     );
                  //     // ログインに成功した場合
                  //     await Navigator.of(context).pushReplacement(
                  //       MaterialPageRoute(builder: (context) {
                  //         return const TodoListPageView();
                  //       }),
                  //     );
                  //   } catch (e) {
                  //     print(e.toString());
                  //   }
                  // },
                  child: const Text("ログイン"),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterUserPageView();
                    })),
                  },
                  child: const Text("ユーザー追加"),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
