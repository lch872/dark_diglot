/* (practice_form.dart)
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
import 'package:dark_diglot/globals.dart';

_PracticeForm thePracticeForm;

class PracticeForm extends StatefulWidget
{
        PracticeForm () // ctor
        {

        }

        @override
        _PracticeForm createState ()
        => thePracticeForm = _PracticeForm ();
}


class _PracticeForm extends State<PracticeForm>
{
        void makeHeaderPanel (List <Widget> screenPanels)
        {
                if ( Mode == t_MODE.BROWSE )
                        return;

                screenPanels.add
                        (
                    Row (
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>
                            [
                                    Container
                                            (
                                            width: 50,
                                            child: Column
                                                    (


                                                    children:
                                                    [
                                                            Text ('Untested', style: TextStyle (color: LabelColor, fontSize: 11),),
                                                            Text ('907', style: TextStyle (color: Colors.white, fontSize: 11),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 50,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('New', style: TextStyle (color: LabelColor, fontSize: 11),),
                                                            Text ('30', style: TextStyle (color: Colors.white, fontSize: 11),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 50,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('Recent', style: TextStyle (color: LabelColor, fontSize: 11),),
                                                            Text ('50', style: TextStyle (color: Colors.white, fontSize: 11),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 50,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('Older', style: TextStyle (color: LabelColor, fontSize: 11),),
                                                            Text ('100', style: TextStyle (color: Colors.white, fontSize: 11),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 50,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('Ancient', style: TextStyle (color: LabelColor, fontSize: 11),),
                                                            Text ('150', style: TextStyle (color: Colors.white, fontSize: 11),),
                                                    ],

                                                    ),
                                            ),
                            ],

                            )
                    );
        }


        void makeKoreanPanel (List <Widget> screenPanels)
        {
                List <Widget> rows = [];
                List <Widget> firstRow = [];
                firstRow.add
                        (
                    Expanded
                            (
                            child: Center (child: Text ('사용하다', style: TextStyle (color: Colors.black, fontSize: 28))),
                            )
                    );
                firstRow.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(0.1),
                                padding: const EdgeInsets.all(0.1),
                                decoration: BoxDecoration
                                        (
                                        color: Colors.white,
                                        border: Border.all (color: FrameColor, width: 1,),
                                        ),

                                //color: Colors.white,
                                child: Text ('Easy'),
                                ),
                        );
                firstRow.add (SizedBox (width: 3.0),);
                firstRow.add (
                    Container
                            (
                            //color: Colors.white,
                            margin: const EdgeInsets.all(0.1),
                                    padding: const EdgeInsets.all(0.1),
                                    decoration: BoxDecoration
                                            (
                                            color: Colors.white,
                                            border: Border.all (color: FrameColor, width: 1,),
                                            ),
                                    child: Text ('verb'),
                            )
                    );
                firstRow.add (SizedBox (width: 3.0),);
                firstRow.add (
                    Container
                            (
                            //color: Colors.white,
                            margin: const EdgeInsets.all(0.1),
                                    padding: const EdgeInsets.all(0.1),
                                    decoration: BoxDecoration
                                            (
                                            color: Colors.white,
                                            border: Border.all (color: FrameColor, width: 1,),
                                            ),
                                    child: Text ('adj.'),
                            )
                    );

                rows.add (Row (children: firstRow));

                List <Widget> secondRow = [];
                secondRow.add
                        (
                    Expanded
                            (
                            child: Center (child: Text ('書', style: TextStyle (color: Colors.black, fontSize: 28))),
                            )
                    );
                secondRow.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(0.1),
                                padding: const EdgeInsets.all(0.1),
                                decoration: BoxDecoration
                                        (
                                        color: Colors.white,
                                        border: Border.all (color: FrameColor, width: 1,),
                                        ),

                                //color: Colors.white,
                                child: Text ('おはよう'),
                                ),
                        );

                secondRow.add (SizedBox (width: 3.0),);
                secondRow.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(0.1),
                                padding: const EdgeInsets.all(0.1),
                                decoration: BoxDecoration
                                        (
                                        color: Colors.white,
                                        border: Border.all (color: FrameColor, width: 1,),
                                        ),

                                //color: Colors.white,
                                child: Text ('こんにちは'),
                                ),
                        );
                rows.add (Row (children: secondRow));

                screenPanels.add
                        (
                        Container
                                (
                            width: double.infinity,

                            margin: const EdgeInsets.all(3.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration
                                    (
                                    color: ButtonColor,
                                    border: Border.all (color: FrameColor, width: 3,),
                                    ),
                            child: Column

                                    (
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: rows,
                                    )
                            ),
                        );
        }

        void makeExamplePanel (List <Widget> screenPanels)
        {
                Widget makeExample (int i)
                {
                        Color _frameColor = FrameColor;
                        Color _dividerColor = BGColor;
                        Color _hiddenColor = Colors.black;
                        Color _bgColor = Colors.white;
                        if ( Phase == t_PHASE.QUESTION )
                        {
                                _frameColor = BGColor;
                                _dividerColor = Colors.white;
                                _hiddenColor = DiglotColor;
                                _bgColor = DiglotColor;
                        }
                        return Container
                                (
                                margin: const EdgeInsets.all(3.0),
                                padding: const EdgeInsets.all(0.0),
                                decoration: BoxDecoration
                                        (
                                        color: Colors.white,
                                        //border: Border.all (color: FrameColor, width: 3,),
                                        border: Border.all (color: _frameColor, width: 3,),
                                        ),

                                child:
                                Column
                                        (
                                        children:
                                        [
                                                Row
                                                        (
                                                        children:
                                                        [
                                                                Expanded
                                                                        (
                                                                        child: Text ('Un superbe texte en coreen.  Assez long pour tenir sur deux lignes'),
                                                                        ),
                                                        ],
                                                        ),
                                                Divider (color: BGColor, height: 10,),

                                                Row
                                                        (
                                                        children:
                                                        [
                                                                Expanded
                                                                        (
                                                                        child: Text ('Un superbe texte en japonais.  Assez long pour tenir sur deux lignes'),
                                                                        ),
                                                        ],
                                                        ),
                                                Divider (color: _dividerColor, height: 10,),

                                                Row
                                                        (
                                                        children:
                                                        [
                                                                Expanded
                                                                        (child: Container (color: _bgColor,

                                                                                                   child: Text
                                                                                                           (
                                                                                                           'Un superbe texte en Anglais.  Assez long pour tenir sur deux lignes',
                                                                                                           style: TextStyle (color: _hiddenColor),
                                                                                                           ),
                                                                                           ),
                                                                         ),
                                                        ],
                                                        ),

                                        ],
                                        ),
                                );
                }
                for ( int i = 0; i < 2; ++i )
                {
                        screenPanels.add (makeExample (i));
                }
        }

        void makeAnswerPanel (List <Widget> screenPanels)
        {
                Color _frameColor = FrameColor;
                Color _dividerColor = FrameColor;
                Color _hiddenColor = Colors.black;
                Color _bgColor = ButtonColor;
                if ( Phase == t_PHASE.QUESTION )
                {
                        _frameColor = BGColor;
                        _dividerColor = BGColor;
                        _hiddenColor = DiglotColor;
                        _bgColor = DiglotColor;
                }
                screenPanels.add (Container
                                          (
                                          margin: const EdgeInsets.all(3.0),
                                          padding: const EdgeInsets.all(0.0),
                                          decoration: BoxDecoration
                                                  (
                                                  color: _bgColor,
                                                  //border: Border.all (color: FrameColor, width: 3,),
                                                  border: Border.all (color: _frameColor, width: 3,),
                                                  ),

                                          child:
                                          Column
                                                  (
                                              children:
                                              [
                                                      Text('Vetements, Chaussures, Parapluie', style: TextStyle (color: _hiddenColor),),
                                                      Divider (color: _dividerColor, height: 10,),
                                                      Text('Ordinateurs, Laptop, Poubelle', style: TextStyle (color: _hiddenColor),),
                                              ],
                                              ),
                                          ),
                                  );
        }


        Widget _makeQuestionBottomBar (BuildContext context)
        {
                return BottomAppBar (
                        color: BGColor,

                        child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>
                                [


                                        Container (
                                                width: 130,
                                                decoration: BoxDecoration
                                                        (
                                                        boxShadow:
                                                        [
                                                                new BoxShadow
                                                                        (
                                                                        color: Colors.black,
                                                                        offset: new Offset(20.0, 10.0),
                                                                        blurRadius: 20.0,
                                                                        ),
                                                        ],
                                                        ),
                                                child: RaisedButton
                                                        (
                                                        onPressed: ()
                                                        {},
                                                        child: Text ('Previous'),
                                                        ),
                                                ),

                                        Container (
                                                width: 130,
                                                decoration: BoxDecoration
                                                        (
                                                        boxShadow:
                                                        [
                                                                new BoxShadow
                                                                        (
                                                                        color: Colors.black,
                                                                        offset: new Offset(20.0, 10.0),
                                                                        blurRadius: 20.0,
                                                                        ),
                                                        ],
                                                        ),
                                                child: RaisedButton
                                                        (
                                                        onPressed: ()
                                                        {
                                                                setPhase (t_PHASE.ANSWER);
                                                        },
                                                        child: Text ('Show Answer'),
                                                        ),
                                                ),

                                ],
                                ),
                        );
        }

        Widget _makeAnswerBottomBar (BuildContext context)
        {
                return BottomAppBar (
                        color: BGColor,

                        child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>
                                [


                                        Container (
                                                width: 130,
                                                decoration: BoxDecoration
                                                        (
                                                        boxShadow:
                                                        [
                                                                new BoxShadow
                                                                        (
                                                                        color: Colors.black,
                                                                        offset: new Offset(20.0, 10.0),
                                                                        blurRadius: 20.0,
                                                                        ),
                                                        ],
                                                        ),
                                                child: RaisedButton
                                                        (
                                                        color: Colors.red,
                                                        onPressed: ()
                                                        {
                                                                setPhase (t_PHASE.QUESTION);
                                                        },
                                                        child: Text ('Wrong'),
                                                        ),
                                                ),

                                        Container (
                                                width: 130,
                                                decoration: BoxDecoration
                                                        (
                                                        boxShadow:
                                                        [
                                                                new BoxShadow
                                                                        (
                                                                        color: Colors.black,
                                                                        offset: new Offset(20.0, 10.0),
                                                                        blurRadius: 20.0,
                                                                        ),
                                                        ],
                                                        ),
                                                child: RaisedButton
                                                        (
                                                        color: Colors.green,
                                                        onPressed: ()
                                                        {
                                                                setPhase (t_PHASE.QUESTION);
                                                        },
                                                        child: Text ('Wright'),
                                                        ),
                                                ),

                                ],
                                ),
                        );
        }

        Widget _makeBottomBar (BuildContext context)
        {
                switch ( Mode )
                {
                        case t_MODE.PRACTICE:
                                {
                                        switch ( Phase )
                                        {
                                                case t_PHASE.QUESTION:
                                                        return _makeQuestionBottomBar (context);
                                                        break;
                                                default:
                                                        return _makeAnswerBottomBar (context);
                                                        break;
                                        }
                                }
                                break;
                        default:
                                return null;
                }
        }


        @override
        Widget build (BuildContext context)
        {
                List <Widget> _screenPanels = [];
                String _formTitle = (Mode == t_MODE.BROWSE) ? 'Browser (33/1234)' : 'Average 77%';
                makeHeaderPanel (_screenPanels);
                makeKoreanPanel (_screenPanels);
                makeExamplePanel (_screenPanels);
                makeAnswerPanel (_screenPanels);
                return Scaffold
                        (
                        backgroundColor: BGColor,
                        appBar: AppBar
                                (
                                title: Text (_formTitle),
                                actions: <Widget>
                                [
                                        new IconButton
                                                (
                                                icon: new Icon(Icons.menu),
                                                onPressed: ()
                                                {},
                                                ),
                                ],
                                ),
                        body: //Column
                        //( children:
                        //[
                        ListView
                                (
                                children: _screenPanels,
                                ),
                        //]
                        //),

                        bottomNavigationBar: _makeBottomBar (context),
                        )

                ;
        }
}