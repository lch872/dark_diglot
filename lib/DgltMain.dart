/*
 *   This file is part of Diglot.
 *
 *   Diglot is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation 3.0 (GPL3).
 *
 *   Diglot is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Diglot.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:flutter/material.dart';
import 'DgltGlobals.dart';



class DgltMainPage extends StatefulWidget
{
        DgltMainPage
            (
            {Key key, this.title}
            ) : super( key: key );
        
        // This widget is the home page of your application. It is stateful, meaning
        // that it has a State object (defined below) that contains fields that affect
        // how it looks.
        
        // This class is the configuration for the state. It holds the values (in this
        // case the title) provided by the parent (in this case the App widget) and
        // used by the build method of the State. Fields in a Widget subclass are
        // always marked "final".
        
        final String title;
        
        @override
        _DgltMainPageState createState ( )
        => _DgltMainPageState ( );
}

class _DgltMainPageState extends State<DgltMainPage>
{
        int _counter = 0;
        
        void _incrementCounter ( )
        {
                _counter++;
                setState (
                        ( )
                    {
                            // This call to setState tells the Flutter framework that something has
                            // changed in this State, which causes it to rerun the build method below
                            // so that the display can reflect the updated values. If we changed
                            // _counter without calling setState(), then the build method would not be
                            // called again, and so nothing would appear to happen.
                            
                    }
                        );
        }


        void _onItemTapped(int index)
        {
                setState(()
                         {
                });
        }


        @override
        Widget build ( BuildContext context )
        {
                // This method is rerun every time setState is called, for instance as done
                // by the _incrementCounter method above.
                //
                // The Flutter framework has been optimized to make rerunning build methods
                // fast, so that you can just rebuild anything that needs updating rather
                // than having to individually change instances of widgets.
                return Scaffold
                        (
                        backgroundColor: BACKGROUND_COLOR,
                        appBar: AppBar
                                (
                                // Here we take the value from the MyHomePage object that was created by
                                // the App.build method, and use it to set our appbar title.
                                title: Text ( 'Average 95%'/*widget.title*/ ),
                                ),
/*
                        bottomNavigationBar: BottomNavigationBar
                        (
                            items: <BottomNavigationBarItem>
                                [
                                        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
                                        BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
                                        BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
                                ],
                                currentIndex: 1,
                                fixedColor: Colors.blue,
                                onTap: _onItemTapped,
        
                        ),
*/
                        body: Center //Column// Center
                                (
                                // Center is a layout widget. It takes a single child and positions it
                                // in the middle of the parent.
                                child: Column
                                        (
                                        // Column is also layout widget. It takes a list of children and
                                        // arranges them vertically. By default, it sizes itself to fit its
                                        // children horizontally, and tries to be as tall as its parent.
                                        //
                                        // Invoke "debug painting" (press "p" in the console, choose the
                                        // "Toggle Debug Paint" action from the Flutter Inspector in Android
                                        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                                        // to see the wireframe for each widget.
                                        //
                                        // Column has various properties to control how it sizes itself and
                                        // how it positions its children. Here we use mainAxisAlignment to
                                        // center the children vertically; the main axis here is the vertical
                                        // axis because Columns are vertical (the cross axis would be
                                        // horizontal).
                                        mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>
                                                [

                                                        Container
                                                                (
                                                                        width: 200,
                                                                        height: 100,
                                                                        decoration: BoxDecoration
                                                                                (
                                                                                        border: new Border.all
                                                                                                (
                                                                                                        color: Colors.green,
                                                                                                        width: 5.0,
                                                                                                        style: BorderStyle.solid
                                                                                                ),

                                                                                        borderRadius: new BorderRadius.only
                                                                                        (
                                                                                                topLeft: new Radius.circular(20.0),
                                                                                                topRight: new Radius.circular(20.0),
                                                                                                bottomLeft: new Radius.circular(20.0),
                                                                                                bottomRight: new Radius.circular(20.0),
                                                                                        ),
                                                                                        

                                                                                        color: Colors.white,
        
                                                                                        boxShadow:
                                                                                        [
                                                                                                new BoxShadow
                                                                                                        (
                                                                                                                color: Colors.black38,
                                                                                                                offset: new Offset(10.0, 10.0),
                                                                                                                blurRadius: 5.0,
                                                                                                                spreadRadius: 7.0
                                                                                                        )
                                                                                        ],

                                                                                        ),
                                                                        
                                                                        child: const Text('RGB', textAlign: TextAlign.center),
                                                                ),
                                                                        
                                                                        
                                                                        Text ( 'The fucking plume', ),
                                                                        Text
                                                                                (
                                                                                '$_counter',
                                                                                style: Theme
                                                                                    .of ( context )
                                                                                    .textTheme
                                                                                    .display1,
                                                                                ),
                                                ],
                                        ),
                                ),
                        floatingActionButton: FloatingActionButton
                                (
                                onPressed: _incrementCounter,
                                tooltip: 'Increment',
                                child: Icon ( Icons.add ),
                                ), // This trailing comma makes auto-formatting nicer for build methods.
                        );
        }
}
