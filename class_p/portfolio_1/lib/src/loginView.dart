import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portfolio_1/src/ment.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();

  _submitform() async {
    var name = namecontroller.text;
    var email = emailcontroller.text;
    var number = numbercontroller.text;

    if (name.isEmpty || email.isEmpty || number.isEmpty) {
      Fluttertoast.showToast(
        msg: 'Enter all data!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 15,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'Done',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 15,
      );
    }
  }

  dynamic values = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<FirstController>(
      builder: (context, counterMod, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Contact Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 37, 228, 241),
                ),
                child: Center(
                  child: Text(
                    '${counterMod.values}',
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 280,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Fluttertoast.showToast(
                                msg: 'Increment 1',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 15,
                              );
                              counterMod.getIncrement();
                            },
                            child: const Text(
                              'Increment',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              Fluttertoast.showToast(
                                msg: 'Decrement 1',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 15,
                              );
                              counterMod.getDecrement();
                            },
                            child: const Text(
                              'Decrement',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onDoubleTap: () {
                              Fluttertoast.showToast(
                                msg: 'Increment 2',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 15,
                              );
                              counterMod.getIncrementTow();
                            },
                            child: const Text(
                              'Increment_2',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onDoubleTap: () {
                              Fluttertoast.showToast(
                                msg: 'Decrement 2',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 15,
                              );
                              counterMod.getDecrementTow();
                            },
                            child: const Text(
                              'Decrement_2',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Fluttertoast.showToast(
                              msg: 'Reset To 0',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.grey,
                              textColor: Colors.white,
                              fontSize: 15,
                            );
                            counterMod.getReset();
                          },
                          child: const Text(
                            'Reset',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter Your Email',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: numbercontroller,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter Your Phone Number',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _submitform();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  elevation: 0.0,
                  padding: const EdgeInsets.all(0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.redAccent, Colors.pinkAccent],
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
