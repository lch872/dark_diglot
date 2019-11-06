/* (home_form.dart)
 *
 * This file is part of Diglot.
 *
 * Diglot is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3, as published by
 * the Free Software Foundation.
 *
 * Diglot is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Diglot.  If not, see <https://www.gnu.org/licenses/>.
 *
 */

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:dark_diglot/home_drawer.dart';
import 'package:dark_diglot/globals.dart';

import 'package:diglot_plugin/diglot_plugin.dart';


class HomeForm extends StatefulWidget
{
        @override
        _HomeForm createState ()
        => _HomeForm ();
}

Widget _filtersListView (BuildContext context)
{
        final titles = ['Easy', 'Fluent', 'Expert', ];
        final descr = ['(An easy selection)', '(for confirmed students)', '(for experts only)'];

         return ListView.separated
                (
                itemCount: 3,
                itemBuilder: (context, index)
                {
                        /*
                        return ListTile (
                                title: Text ('toto'),
                                );

                         */
                        return Card(
                                child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                                children: <Widget>[
                                                        Text(titles[index]),
                                                        Text(descr[index]),
                                                ],
                                                ),
                                        ),
                                );

                },
                separatorBuilder: (context, index) {
                        return Divider(color: Colors.amber, height: 3,);
                },


                );
}

class _HomeForm extends State<HomeForm>
{
        String _platformVersion = 'Unknown';

        @override
        void initState ()
        {
                super.initState ();
        }


        @override
        Widget build (BuildContext context)
        {
                return Scaffold
                        (
                        backgroundColor: BGColor,
                        appBar: AppBar
                                (
                                title: const Text('Diglot Korean'),
                                ),
/*
                        bottomNavigationBar: BottomAppBar (
                                child: new Container(
                                        //mainAxisSize: MainAxisSize.max,
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        color: DiglotColor,
                                                child:
                                                (

                                                    Container (
                                                            color: Colors.transparent,
                                                            width: MediaQuery
                                                                .of (context)
                                                                .size
                                                                .width,
                                                            height: 80,
                                                            child:
                                                            RaisedButton
                                                                    (
                                                                    shape: new RoundedRectangleBorder(
                                                                            borderRadius: new BorderRadius.circular(30.0),
                                                                            ),
                                                                    onPressed: ()
                                                                    {
                                                                            Navigator.pushNamed (context, "/practice");
                                                                    },
                                                                    child: Text ('Practice!'),
                                                                    ),
                                                            )

                                                    //IconButton(icon: Icon(Icons.menu), onPressed: () {},),
                                                    //IconButton(icon: Icon(Icons.search), onPressed: () {},),
                                                ),
                                        ),
                                ),
*/

                        body: Container (color: DiglotColor, child: Column
                                (
                                children:
                                [
                                        Image.asset ('assets/images/banner.png'),
                                        Divider (color: DiglotColor, height: 10,),
                                        Center (
                                                child: Row (children: [
                                                        Text ("Student : ", style: TextStyle (color: Colors.amber),),
                                                        Text ("Marcel", style: TextStyle (color: Colors.white),),
                                                ],
                                                            ),
                                                ),
                                        Divider (color: Colors.amber, height: 30,),
                                        Row
                                                (
                                            children:
                                            [
                                                    Text ('Total Cards: ', style: TextStyle (color: Colors.amber)),
                                                    Text ('12345', style: TextStyle (color: Colors.white)),

                                                    new SizedBox(
                                                            width: 50.0,

                                                            ),
                                                    Text ('Untested: ', style: TextStyle (color: Colors.amber)),
                                                    Text ('1234', style: TextStyle (color: Colors.white)),
                                            ]

                                            ),
                                        Divider (color: Colors.amber, height: 30,),

                                        Expanded (child:

                                                  Row
                                                          (
                                                          children:
                                                          [
                                                                  Column
                                                                          (


                                                                          children:
                                                                          [
                                                                                  Text ('Practice Mode:', style: TextStyle (color: Colors.amber)),

                                                                                  Expanded (
                                                                                          child: Container
                                                                                                  (
                                                                                                  width: 120,

                                                                                                  //constraints: BoxConstraints.expand(),
                                                                                                  margin: const EdgeInsets.all(0.0),
                                                                                                  padding: const EdgeInsets.all(0.0),
                                                                                                  decoration: BoxDecoration
                                                                                                          (
                                                                                                          color: ButtonColor,
                                                                                                          border: Border.all (color: FrameColor, width: 3,),
                                                                                                          ),


                                                                                                  child: Column
                                                                                                          (
                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                          children: <Widget>
                                                                                                          [
                                                                                                                  Container (height: 20, child:
                                                                                                                  Row
                                                                                                                          (


                                                                                                                          children: [
                                                                                                                                  Radio (
                                                                                                                                          value: 0,
                                                                                                                                          groupValue: radioValue1,
                                                                                                                                          onChanged: (int selected)
                                                                                                                                          {},
                                                                                                                                          ),
                                                                                                                                  Text ('Korean'),
                                                                                                                          ],

                                                                                                                          ),
                                                                                                                             ),
                                                                                                                  Container (height: 20, child:
                                                                                                                  Row
                                                                                                                          (

                                                                                                                          children: [
                                                                                                                                  Radio (
                                                                                                                                          value: 1,
                                                                                                                                          groupValue: radioValue1,
                                                                                                                                          onChanged: (int selected)
                                                                                                                                          {},
                                                                                                                                          ),
                                                                                                                                  Text ('Hanja',),
                                                                                                                          ],

                                                                                                                          ),
                                                                                                                             ),
                                                                                                                  Container (height: 20, child:
                                                                                                                  Row
                                                                                                                          (

                                                                                                                          children: [
                                                                                                                                  Radio (
                                                                                                                                          value: 2,
                                                                                                                                          groupValue: radioValue1,
                                                                                                                                          onChanged: (int selected)
                                                                                                                                          {},
                                                                                                                                          ),
                                                                                                                                  Text ('English',),
                                                                                                                          ],

                                                                                                                          ),
                                                                                                                             ),
                                                                                                                  Container (height: 20, child:
                                                                                                                  Row
                                                                                                                          (

                                                                                                                          children: [
                                                                                                                                  Radio (
                                                                                                                                          value: 3,
                                                                                                                                          groupValue: radioValue1,
                                                                                                                                          onChanged: (int selected)
                                                                                                                                          {},
                                                                                                                                          ),
                                                                                                                                  Text ('Browse',),
                                                                                                                          ],

                                                                                                                          ),
                                                                                                                             ),
                                                                                                                  Container (height: 20, child:
                                                                                                                  Row
                                                                                                                          (

                                                                                                                          children: [
                                                                                                                                  Radio (
                                                                                                                                          value: 4,
                                                                                                                                          groupValue: radioValue1,
                                                                                                                                          onChanged: (int selected)
                                                                                                                                          {},
                                                                                                                                          ),
                                                                                                                                  Text ('Auto',),
                                                                                                                          ],

                                                                                                                          ),
                                                                                                                             ),


                                                                                                          ],


                                                                                                          ),


                                                                                                  ),
                                                                                          ),
                                                                                  Container
                                                                                          (
                                                                                          width: 120,
                                                                                          height: 30,

                                                                                          //constraints: BoxConstraints.expand(),
                                                                                          margin: const EdgeInsets.all(0.0),
                                                                                          padding: const EdgeInsets.all(0.0),
                                                                                          decoration: BoxDecoration
                                                                                                  (
                                                                                                  color: ButtonColor,
                                                                                                  border: Border.all (color: FrameColor, width: 3,),
                                                                                                  ),

                                                                                          child: RaisedButton
                                                                                                  (
                                                                                                  onPressed: ()
                                                                                                  {},
                                                                                                  child: Text ('Reset Sess.'),
                                                                                                  ),
                                                                                          ),

                                                                          ],

                                                                          ),


                                                                  Expanded (child:
                                                                            Column
                                                                                    (
                                                                                    children:
                                                                                    [
                                                                                            Text ('Filter:', style: TextStyle (color: Colors.amber)),
                                                                                            Expanded (
                                                                                                    //flex: 5,
                                                                                                    child: Container
                                                                                                            (
                                                                                                            //width: 150,
                                                                                                            //constraints: BoxConstraints.expand(),
                                                                                                            margin: const EdgeInsets.all(0.0),
                                                                                                                    padding: const EdgeInsets.all(0.0),
                                                                                                                    decoration: BoxDecoration
                                                                                                                            (
                                                                                                                            color: ButtonColor,
                                                                                                                            border: Border.all (color: FrameColor, width: 3,),
                                                                                                                            ),


                                                                                                                    child: _filtersListView (context),

                                                                                                            )


                                                                                                    ),
                                                                                            Container
                                                                                                    (
                                                                                                    //width: 120,
                                                                                                    height: 30,
                                                                                                            width: double.infinity,

                                                                                                            //constraints: BoxConstraints.expand(),
                                                                                                            margin: const EdgeInsets.all(0.0),
                                                                                                            padding: const EdgeInsets.all(0.0),
                                                                                                            decoration: BoxDecoration
                                                                                                                    (
                                                                                                                    color: ButtonColor,
                                                                                                                    border: Border.all (color: FrameColor, width: FrameWidth,),
                                                                                                                    ),

                                                                                                            child: RaisedButton
                                                                                                                    (
                                                                                                                    onPressed: ()
                                                                                                                    {},
                                                                                                                    child: Text ('Filters...'),
                                                                                                                    ),
                                                                                                    ),


                                                                                    ],

                                                                                    ),
                                                                            ),

                                                          ],
                                                          ),
                                                  ),

                                        new ButtonBar(
                                                mainAxisSize: MainAxisSize.max, // this will take space as minimum as posible(to center)
                                                children: <Widget>[
                                                        /*
                                                        new RaisedButton(
                                                                child: new Text('Hello'),
                                                                onPressed: ()
                                                                {},
                                                                ),
                                                        new RaisedButton(
                                                                child: new Text('Hi'),
                                                                onPressed: ()
                                                                {},
                                                                ),

                                                         */
                                                        new Container(
                                                                //mainAxisSize: MainAxisSize.max,
                                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                color: DiglotColor,
                                                                        child:
                                                                        (

                                                                            Container
                                                                                    (
                                                                                    color: Colors.transparent,
                                                                                    width: MediaQuery
                                                                                        .of (context)
                                                                                        .size
                                                                                        .width,
                                                                                    height: 55,
                                                                                    child:
                                                                                    RaisedButton
                                                                                            (
                                                                                            shape: new RoundedRectangleBorder
                                                                                                    (
                                                                                                    borderRadius: new BorderRadius.circular(30.0),
                                                                                                    ),
                                                                                            onPressed: ()
                                                                                            {
                                                                                                    Navigator.pushNamed (context, "/practice");
                                                                                            },
                                                                                            child: Text ('Practice !'),
                                                                                            ),
                                                                                    )

                                                                            //IconButton(icon: Icon(Icons.menu), onPressed: () {},),
                                                                            //IconButton(icon: Icon(Icons.search), onPressed: () {},),
                                                                        ),
                                                                ),

                                                ],
                                                ),


                                ],
                                ),
                                         ),
                        drawer: new HomeDrawer(),
                        );
        }
}


