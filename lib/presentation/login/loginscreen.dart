import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import "package:redeflutter/localization.dart";
import "package:redeflutter/presentation/login/auth_button.dart";
import "package:redeflutter/presentation/settings/privacy_settings_button.dart";
import 'package:redeflutter/theme.dart';
import "package:redeflutter/util/logger.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.whiteGrey,
      appBar: AppBar(
        backgroundColor: AppTheme.lightGray,
        elevation: 0,
        centerTitle: true,
        title: Text(RedeappLocalizations.of(context).logIn,
            style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(40.0),
                child: _LoginForm(),
              ),
              Column(
                children: [
                  Text(RedeappLocalizations.of(context).iForgot),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          RedeappLocalizations.of(context).password,
                          style: AppTheme.SigninButtonText,
                        ),
                      ),
                      Text("|", style: AppTheme.SigninButtonText),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          RedeappLocalizations.of(context).username,
                          style: AppTheme.SigninButtonText,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// MARK: Login Form

class _LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<_LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _userTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  var _rememberUsernameValue = false;

  @override
  void dispose() {
    // Suggested to be disposed: https://flutter.dev/docs/cookbook/forms/retrieve-input#1-create-a-texteditingcontroller
    _userTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final submitCallback = () {
      if (_formKey.currentState.validate()) {
        // final loginAction = LogIn(
        //     email: _userTextEditingController.text,
        //     password: _passwordTextEditingController.text);

        // StoreProvider.of<AppState>(context).dispatch(loginAction);
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("Logging you in...")));

        // loginAction.completer.future.catchError((error) {
        //   Scaffold.of(context).hideCurrentSnackBar();
        //   Logger.w(error.code.toString());
        //   Scaffold.of(context).showSnackBar(SnackBar(
        //       content: Text(RedeappLocalizations.of(context)
        //           .authErrorMessage(error.code.toString()))));
        // });
      }
    };

    final submitButton = AuthButton(
        buttonText: RedeappLocalizations.of(context).logIn,
        onPressedCallback: submitCallback);

    final _userTextField = TextFormField(
      style: TextStyle(fontSize: 20),
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(top: -20, bottom: 0, left: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: InputBorder.none,
          labelText: "Username or email",
          fillColor: Colors.white),
      controller: _userTextEditingController,
      validator: (value) {
        if (value.isEmpty) {
          return "Please enter your email";
        }
        return null;
      },
    );

    final _passwordTextField = TextFormField(
      style: TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(top: -20, bottom: 0, left: 10),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Password",
        border: InputBorder.none,
      ),
      controller: _passwordTextEditingController,
      validator: (value) {
        if (value.isEmpty) {
          return "Please enter your password";
        }
        return null;
      },
      obscureText: true,
    );

    final _rememberUsername = Row(
      children: [
        PlatformSwitch(
            value: _rememberUsernameValue,
            onChanged: (value) {
              setState(() {
                _rememberUsernameValue = !_rememberUsernameValue;
              });
            }),
        Text(RedeappLocalizations.of(context).rememberUsername),
      ],
    );
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                _userTextField,
                Divider(
                  color: Colors.black,
                  height: 2,
                ),
                _passwordTextField,
              ],
            ),
          ),
          _rememberUsername,
          submitButton
        ],
      ),
    );
  }
}
