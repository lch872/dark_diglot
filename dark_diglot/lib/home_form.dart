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
import 'package:dark_diglot/ui/diglot_font.dart';
import 'package:diglot_plugin/diglot_plugin.dart';

_HomeForm theHomeForm;

class HomeForm extends StatefulWidget
{
        @override
        _HomeForm createState ()
        => theHomeForm = _HomeForm ();
}


class _HomeForm extends State<HomeForm>
{

        Widget _filtersListView (BuildContext context)
        {
                final titles = ['Easy', 'Fluent', 'Expert',];
                final descr = ['(An easy selection)', '(for confirmed students)', '(for experts only)'];

                return ListView.separated
                        (
                        itemCount: 3,
                        itemBuilder: (context, index)
                        {
                                return Card (
                                        child: Padding (
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column (
                                                        children: <Widget>[
                                                                Text (titles[index]),
                                                                Text (descr[index]),
                                                        ],
                                                        ),
                                                ),
                                        );
                        },
                        separatorBuilder: (context, index)
                        {
                                return Divider (color: LabelColor, height: 3,);
                        },


                        );
        }


        Widget _buttonBar (BuildContext context)
        {
                String _goLabel = 'Go !';
                switch ( Mode )
                {
                        case t_MODE.BROWSE:
                                _goLabel = 'Browse';
                                break;
                        case t_MODE.AUTO:
                                _goLabel = 'Run !';
                                break;
                        default:
                                _goLabel = 'Practice !';
                }
                return ButtonBar
                        (
                        mainAxisSize: MainAxisSize.max, // this will take space as minimum as posible(to center)
                        children: <Widget>
                        [
                                new Container
                                        (
                                        color: BGColor,
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
                                                                    borderRadius: BorderRadius.circular (30.0),
                                                                    ),
                                                            onPressed: ()
                                                            {
                                                                    Navigator.pushNamed (context, "/practice");
                                                            },
                                                            child: Text (_goLabel),
                                                            ),
                                                    )

                                        ),
                                        ),

                        ],
                        )
                ;
        }

        Widget _practiceMode (BuildContext context)
        {
                return
                        Column
                                (


                                children:
                                [
                                        Text ('Practice Mode:', style: TextStyle (color: LabelColor),),

                                        Expanded (
                                                child: Container
                                                        (
                                                        width: 115,

                                                        margin: const EdgeInsets.all(3.0),
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
                                                                        Container
                                                                                (
                                                                                height: 15,
                                                                                child: Row
                                                                                        (


                                                                                        children:
                                                                                        [
                                                                                                Radio
                                                                                                        (
                                                                                                        value: t_MODE.PRACTICE,
                                                                                                        groupValue: Mode,
                                                                                                        onChanged: setMode,
                                                                                                        ),
                                                                                                Text ('Korean'),
                                                                                        ],

                                                                                        ),
                                                                                ),
                                                                        Container
                                                                                (
                                                                                height: 15,
                                                                                child: Row
                                                                                        (

                                                                                        children:
                                                                                        [
                                                                                                Radio
                                                                                                        (
                                                                                                        value: t_MODE.ALTERNATE,
                                                                                                        groupValue: Mode,
                                                                                                        onChanged: setMode,
                                                                                                        ),
                                                                                                Text ('Hanja',),
                                                                                        ],

                                                                                        ),
                                                                                ),
                                                                        Container
                                                                                (
                                                                                height: 15,
                                                                                child: Row
                                                                                        (

                                                                                        children:
                                                                                        [
                                                                                                //Icon(DiglotFont.candle),
                                                                                                Radio
                                                                                                        (
                                                                                                        value: t_MODE.ENGLISH,
                                                                                                        groupValue: Mode,
                                                                                                        onChanged: setMode,
                                                                                                        ),
                                                                                                Text ('English',),
                                                                                        ],

                                                                                        ),
                                                                                ),
                                                                        Container
                                                                                (
                                                                                height: 15,
                                                                                child: Row
                                                                                        (

                                                                                        children:
                                                                                        [
                                                                                                //Icon(DiglotFont.browse),
                                                                                                Radio
                                                                                                        (
                                                                                                        value: t_MODE.BROWSE,
                                                                                                        groupValue: Mode,
                                                                                                        onChanged: setMode,
                                                                                                        ),
                                                                                                Text ('Browse',),
                                                                                        ],

                                                                                        ),
                                                                                ),
                                                                        Container
                                                                                (
                                                                                height: 15,
                                                                                child: Row
                                                                                        (

                                                                                        children:
                                                                                        [
                                                                                                //Icon(Icons.directions_car ),
                                                                                                Radio
                                                                                                        (
                                                                                                        value: t_MODE.AUTO,
                                                                                                        groupValue: Mode,
                                                                                                        onChanged: setMode,
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
                                                width: 115,
                                                height: 40,

                                                margin: const EdgeInsets.all(3.0),
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
                                                        child: Text ('Sessions...'),
                                                        ),
                                                ),
                                ],
                                )
                ;
        }


        Widget _filter (BuildContext context)
        {
                return
                        Expanded (child:
                                  Column
                                          (
                                          children:
                                          [
                                                  Text ('Filter:', style: TextStyle (color: LabelColor)),
                                                  Expanded (
                                                          //flex: 5,
                                                          child: Container
                                                                  (
                                                                  margin: const EdgeInsets.all(3.0),
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
                                                          height: 40,
                                                                  width: double.infinity,

                                                                  //constraints: BoxConstraints.expand(),
                                                                  margin: const EdgeInsets.all(3.0),
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
                                  )

                ;
        }


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
                                backgroundColor: Purple,
                                title: const Text('Diglot Korean'),
                                ),

                        body: Column
                                (

                                children:
                                [
                                        Image.asset ('assets/images/banner.png'),
                                        //Divider (color: Colors.black, height: 10,),
                                        Container (  color: ButtonColor, height: 3,),
                                        Divider (color: BGColor, height: 10,),
                                        Row
                                                (
                                                children:
                                                [
                                                        Text ("Classroom : ", style: TextStyle (color: LabelColor),),
                                                        Text ("KoreanDic", style: TextStyle (color: Colors.white),),
                                                        SizedBox (width: 50.0),
                                                        Text ("Student : ", style: TextStyle (color: LabelColor),),
                                                        Text ("Marcel", style: TextStyle (color: Colors.white),),
                                                ],
                                                ),
                                        //),
                                        //Divider (color: BGColor, height: 15,),
                                        Container (color: Colors.white, child: Row
                                                (
                                            children:
                                            [
                                                    Text ('Total Cards: ', style: TextStyle ()),
                                                    Text ('12345',),

                                                    SizedBox (width: 50.0),

                                                    Text ('Untested: ', style: TextStyle ()),
                                                    Text ('1234',),
                                            ]
                                            ),
                                                   ),
                                        Divider (color: BGColor, height: 10,),

                                        Expanded (child:

                                                  Row
                                                          (
                                                          children:
                                                          [
                                                                  _practiceMode (context),
                                                                  _filter (context),
                                                          ],
                                                          ),
                                                  ),


                                        _buttonBar (context),

                                ],
                                ),
                        //),
                        drawer: new HomeDrawer(),
                        );
        }
}


