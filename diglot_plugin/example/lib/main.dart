//!!!
//!!! @toto.JS() // Sets the context, which in this case is `window`
library main; // required library declaration called main, or whatever name you wish
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:diglot_plugin/diglot_plugin.dart';

  //import 'dart:html' as html;
  //import 'dart:js' as js; // only if you want to do Js logic
//!!!
//!!! import "package:js/js.dart" as toto ;


// Sets a platform override for desktop to avoid exceptions. See
// https://flutter.dev/desktop#target-platform-override for more info.
void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  //js.context.callMethod('alert',<String>['La plume']);
  runApp(MyApp());
}


//!!!
//!!! @toto.JS("getPlateformVersion")
//!!!
//!!! external getPlateformVersion();




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();

    if (kIsWeb)
    {

      setState(() {
        //!!!
        //!!! _platformVersion = getPlateformVersion(); //js.context.callMethod('getPlateformVersion');
      });    } else
      {
        initPlatformState();
      }

  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await DiglotPlugin.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }


  //!!!
  //!!! @toto.JS("TestCallback")
  //!!!
  //!!! external String TestCallback(String fn());

  //!!! String TestCallback( String fn())
  //!!! {
     //!!!return fn();
  //!!!}

  void BtnClicked()
  {
    setState(() {
      //!!! _platformVersion = TestCallback(  /*(){ return 'CALL BACK';} */null );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Running on: $_platformVersion\n'),
        ),
        body:
        Center(
          child:
          RaisedButton(
            onPressed: BtnClicked,
            child: const Text(
                'Test Callback',
                style: TextStyle(fontSize: 20)
                ),
            ),


          ),
        ) // Scaffold



      ); // MaterialApp
  }
}
