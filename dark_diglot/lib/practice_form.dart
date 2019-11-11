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
import 'package:dark_diglot/ui/diglot_font.dart';


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

                screenPanels.add (Divider (color: BGColor, height: 5,));
                screenPanels.add
                        (
                    Row (
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>
                            [
                                    Container
                                            (
                                            width: 60,
                                            child: Column
                                                    (


                                                    children:
                                                    [
                                                            Text ('Untested', style: TextStyle (color: LabelColor, fontSize: 13),),
                                                            Text ('907', style: TextStyle (color: Colors.white, fontSize: 13),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 60,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('New', style: TextStyle (color: LabelColor, fontSize: 13),),
                                                            Text ('30', style: TextStyle (color: Colors.white, fontSize: 13),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 60,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('Recent', style: TextStyle (color: LabelColor, fontSize: 13),),
                                                            Text ('50', style: TextStyle (color: Colors.white, fontSize: 13),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 60,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('Older', style: TextStyle (color: LabelColor, fontSize: 13),),
                                                            Text ('100', style: TextStyle (color: Colors.white, fontSize: 13),),
                                                    ],

                                                    ),
                                            ),
                                    Container
                                            (
                                            width: 60,
                                            child: Column
                                                    (

                                                    children:
                                                    [
                                                            Text ('Ancient', style: TextStyle (color: LabelColor, fontSize: 13),),
                                                            Text ('150', style: TextStyle (color: Colors.white, fontSize: 13),),
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
                                child: Container
                                        (
                                        color: Colors.white,
                                        margin: const EdgeInsets.all(3),
                                        padding: const EdgeInsets.all(1.5),
                                        //decoration: BoxDecoration
                                        //(
                                        //color: Colors.white,
                                        //border: Border.all (color: FrameColor, width: 1,),
                                        //),

                                        child: Center (child: Text ('사용하다', style: TextStyle (color: Colors.black, fontSize: 28))),
                                        ),
                                ),
                        );
                firstRow.add (
                    Container
                            (
                            color: Colors.white,
                            margin: const EdgeInsets.all(1),
                            padding: const EdgeInsets.all(1),
                            //decoration: BoxDecoration
                            //(
                            //color: Colors.white,
                            //border: Border.all (color: FrameColor, width: 1,),
                            //),
                            child: Text ('명'),
                            )
                    );
                firstRow.add (SizedBox (width: 3.0),);
                firstRow.add (
                    Container
                            (
                            color: Colors.white,
                            margin: const EdgeInsets.all(1),
                            padding: const EdgeInsets.all(1),
                            //decoration: BoxDecoration
                            //(
                            //color: Colors.white,
                            //border: Border.all (color: FrameColor, width: 1,),
                            //),
                            child: Text ('대'),
                            )
                    );

                firstRow.add (SizedBox (width: 3.0),);

                firstRow.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(1),
                                padding: const EdgeInsets.all(1),
                                //decoration: BoxDecoration
                                //(
                                //color: Colors.white,
                                //border: Border.all (color: FrameColor, width: 1,),
                                //),

                                color: Colors.white,
                                child: Text ('Easy'),
                                ),
                        );


                rows.add (Row (children: firstRow));

                List <Widget> secondRow = [];
                secondRow.add
                        (
                        Expanded
                                (
                                child: Container
                                        (
                                        color: Colors.white,
                                        margin: const EdgeInsets.all(3),
                                        padding: const EdgeInsets.all(1.5),
                                        //decoration: BoxDecoration
                                        //(
                                        //color: Colors.white,
                                        //border: Border.all (color: FrameColor, width: 1,),
                                        // ),


                                        child: Center (child: Text ('書', style: TextStyle (color: Colors.black, fontSize: 28),),),
                                        ),
                                ),
                        );
                secondRow.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(0.1),
                                padding: const EdgeInsets.all(0.1),
                                //decoration: BoxDecoration
                                //(
                                //color: Colors.white,
                                //border: Border.all (color: FrameColor, width: 1,),
                                //),

                                color: Colors.white,
                                child: Text ('おはよう', style: TextStyle (color: Colors.black, fontSize: 18),),
                                ),
                        );

                secondRow.add (SizedBox (width: 3.0),);
                secondRow.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(0.1),
                                padding: const EdgeInsets.all(0.1),
                                //decoration: BoxDecoration
                                //(
                                //color: Colors.white,
                                //border: Border.all (color: FrameColor, width: 1,),
                                //),

                                color: Colors.white,
                                child: Text ('こんにちは', style: TextStyle (color: Colors.black, fontSize: 18),),
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
                        Color _dividerColor = BGColor;
                        Color _hiddenColor = Colors.black;
                        //Color _bgColor = ButtonColor;
                        if ( Phase == t_PHASE.QUESTION )
                        {
                                _dividerColor = Colors.white;
                                _hiddenColor = Colors.white;
                                //_bgColor = DiglotColor;
                        }
                        return Column
                                (
                                children:
                                [
                                        Row
                                                (
                                                children:
                                                [
                                                        Expanded
                                                                (
                                                                child: Container (
                                                                        height: 32,
                                                                        color: Colors.white,
                                                                        margin: const EdgeInsets.all(2.0),
                                                                        padding: const EdgeInsets.all(0.0),

                                                                        child: Text (
                                                                                'Un superbe texte en coreen.  Assez long pour tenir sur deux lignes. (du moins sur un petit telephone',
                                                                                style: TextStyle (fontSize: 12),),
                                                                        ),
                                                                ),
                                                ],
                                                ),
                                        //Divider (color: BGColor, height: 10,),

                                        Row
                                                (
                                                children:
                                                [
                                                        Expanded
                                                                (
                                                                child: Container (
                                                                        height: 32,
                                                                        color: Colors.white,
                                                                        margin: const EdgeInsets.all(2.0),
                                                                        padding: const EdgeInsets.all(0.0),

                                                                        child: Text ('Un superbe texte en japonais.  Assez long pour tenir sur deux lignes',
                                                                                             style: TextStyle (fontSize: 12),),
                                                                        ),
                                                                ),
                                                ],
                                                ),
                                        //Divider (color: _dividerColor, height: 10,),

                                        Row
                                                (
                                                children:
                                                [
                                                        Expanded
                                                                (
                                                                child: Container (
                                                                        height: 32,
                                                                        color: Colors.white,
                                                                        margin: const EdgeInsets.all(2.0),
                                                                        padding: const EdgeInsets.all(0.0),


                                                                        child: Text
                                                                                (
                                                                                'Un superbe texte en Anglais.  Assez long pour tenir sur deux lignes',
                                                                                style: TextStyle (color: _hiddenColor, fontSize: 12),
                                                                                ),
                                                                        ),
                                                                ),
                                                ],
                                                ),

                                ],
                                );
                }
                List<Widget> _ex = [];
                for ( int i = 0; i < 2; ++i )
                {
                        if ( i > 0 )
                        {
                                _ex.add (Divider (color: FrameColor, height: 5,
                                                          thickness: 3,
                                                  ),);
                        }
                        _ex.add (makeExample (i));
                }
                screenPanels.add
                        (
                        Container
                                (
                                margin: const EdgeInsets.all(3.0),
                                padding: const EdgeInsets.all(0.0),
                                decoration: BoxDecoration
                                        (
                                        color: ButtonColor,
                                        border: Border.all (color: FrameColor, width: 3,),
                                        ),

                                child:
                                Column
                                        (
                                        children:
                                        _ex,
                                        ),
                                ),
                        );
        }

        void makeAnswerPanel (List <Widget> screenPanels)
        {
                Color _frameColor = FrameColor;
                Color _dividerColor = FrameColor;
                Color _hiddenColor = Colors.black;
                Color _bgColor = Colors.white;
                Color _buttonColor = ButtonColor;
                if ( Phase == t_PHASE.QUESTION )
                {
                        _frameColor = BGColor;
                        _dividerColor = BGColor;
                        _hiddenColor = BGColor;
                        _bgColor = BGColor;
                        _buttonColor = BGColor;
                }
                screenPanels.add (Container
                                          (
                                      margin: const EdgeInsets.all(3.0),
                                      padding: const EdgeInsets.all(0.0),
                                      decoration: BoxDecoration
                                              (
                                              color: _buttonColor,
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
                                                                  Expanded (child:
                                                                            Container
                                                                                    (
                                                                                    color: _bgColor,
                                                                                    margin: const EdgeInsets.all(3.0),
                                                                                    padding: const EdgeInsets.all(0.0),
                                                                                    height: 40,

                                                                                    child:
                                                                                    Center (child: Text ('Vetements, Chaussures, Parapluie, et des scoubidous',
                                                                                                                 style: TextStyle (color: _hiddenColor, fontSize: 16),),),

                                                                                    ),
                                                                            ),
                                                          ],
                                                          ),

                                                  Divider (color: _dividerColor, height: 0,),

                                                  Row
                                                          (
                                                          children:
                                                          [
                                                                  Expanded
                                                                          (child:

                                                                           Container
                                                                                   (
                                                                                   color: _bgColor,
                                                                                   margin: const EdgeInsets.all(3.0),
                                                                                   padding: const EdgeInsets.all(0.0),
                                                                                   height: 40,

                                                                                   child:
                                                                                   Center (child: Text (
                                                                                           'Ordinateurs, Laptop, Poubelle', style: TextStyle (color: _hiddenColor, fontSize: 16),),

                                                                                           ),
                                                                                   ),
                                                                           )

                                                          ],
                                                          )
                                          ]
                                          )
                                      )
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
                                //crossAxisAlignment: CrossAxisAlignment.stretch,

                                children: <Widget>
                                [


                                        //Container (
                                        //width: 125,
                                        /*
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
                                                 */
                                        //child:
                                        Expanded (child:


                                                  Container
                                                          (
                                                          //width: 6,
                                                          margin: const EdgeInsets.all(3.0),
                                                                  height: 50,

                                                                  child:


                                                                  RaisedButton.icon
                                                                          (
                                                                          icon: Icon (Icons.arrow_left), //`Icon` to display
                                                                          label: Text ('Prev.'), //`Text` to display
                                                                          color: ButtonColor,
                                                                          onPressed: ()
                                                                          {},
                                                                          ),
                                                          ),
                                                  ),
                                        //VerticalDivider (),
                                        //Container (width: 3.0, color: FrameColor , height),


                                        Container
                                                (
                                                width: 60,
                                                height: 50,
                                                margin: const EdgeInsets.all(0.0),
                                                //padding: const EdgeInsets.all(3.0),
/*

                                                        decoration: BoxDecoration
                                                                (
                                                                border: Border.all (color: Colors.blueAccent, width: 3),
                                                                boxShadow:
                                                                [
                                                                        new BoxShadow
                                                                                (
                                                                                color: Colors.black,
                                                                                offset: new Offset(20.0, 10.0),
                                                                                blurRadius: 20.0,
                                                                                ),
                                                                ],
                                                                //color:  ButtonColor,
                                                                ),

 */
                                                child:
                                                RaisedButton.icon
                                                        (
                                                        icon: Icon (Icons.edit), //`Icon` to display
                                                        label: Text (''), //`Text` to display
                                                        color: Colors.yellow,
                                                        onPressed: ()
                                                        {},
                                                        ),


                                                ),
                                        /*
                                                Container
                                                        ( //child:  SizedBox
                                                          //(
                                                          margin: const EdgeInsets.all(3.0),
                                                                  padding: const EdgeInsets.all(3.0),

                                                                  //width: 5.0,
                                                                  //height: 10,
                                                                  //child: const DecoratedBox
                                                                  //(
                                                                  decoration: const BoxDecoration
                                                                          (
                                                                          color: Colors.red,
                                                                          ),
                                                          //),
                                                          //),
                                                          ),

                                                 */


                                        //Container (
                                        //width: 125,
                                        /*
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

                                                 */
                                        //child:
                                        Expanded (child:

                                                  Container
                                                          (
                                                          //width: 6,
                                                          margin: const EdgeInsets.all(3.0),
                                                                  height: 50,

                                                                  child:


                                                                  RaisedButton.icon
                                                                          (
                                                                          icon: Icon (DiglotFont.candle), //`Icon` to display
                                                                          label: Text ('Answer'), //`Text` to display
                                                                          color: ButtonColor,
                                                                          onPressed: ()
                                                                          {
                                                                                  setPhase (t_PHASE.ANSWER);
                                                                          },
                                                                          ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>
                                [


                                        Expanded (
                                                //width: 125,
                                                /*
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
                                                 */
                                                child:
                                                Container
                                                        (
                                                        //width: 6,
                                                        margin: const EdgeInsets.all(3.0),
                                                                height: 50,

                                                                child:


                                                                RaisedButton.icon
                                                                        (
                                                                        color: Color (0xFFFFA0A0),
                                                                        onPressed: ()
                                                                        {
                                                                                setPhase (t_PHASE.QUESTION);
                                                                        },
                                                                        icon: Icon (Icons.thumb_down), //`Icon` to display
                                                                        label: Text ('Wrong'), //`Text` to display
                                                                        ),
                                                        ),
                                                ),

                                        Container
                                                (
                                                height: 50,
                                                width: 60,
                                                //margin: const EdgeInsets.all(3.0),
                                                //padding: const EdgeInsets.all(3.0),
/*

                                                        decoration: BoxDecoration
                                                                (
                                                                border: Border.all (color: Colors.blueAccent, width: 3),
                                                                boxShadow:
                                                                [
                                                                        new BoxShadow
                                                                                (
                                                                                color: Colors.black,
                                                                                offset: new Offset(20.0, 10.0),
                                                                                blurRadius: 20.0,
                                                                                ),
                                                                ],
                                                                //color:  ButtonColor,
                                                                ),

 */
                                                child:
                                                RaisedButton.icon
                                                        (
                                                        icon: Icon (Icons.edit), //`Icon` to display
                                                        label: Text (''), //`Text` to display
                                                        color: Colors.yellow,
                                                        onPressed: ()
                                                        {},
                                                        ),


                                                ),


                                        Expanded (
                                                //width: 125,
                                                /*
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
                                                 */
                                                child:

                                                Container
                                                        (
                                                        //width: 6,
                                                        height: 50,
                                                        margin: const EdgeInsets.all(3.0),

                                                                child:


                                                                RaisedButton.icon
                                                                        (
                                                                        color: Color (0xFFA0FFA0),
                                                                        onPressed: ()
                                                                        {
                                                                                setPhase (t_PHASE.QUESTION);
                                                                        },
                                                                        icon: Icon (Icons.thumb_up), //`Icon` to display
                                                                        label: Text ('Right'), //`Text` to display
                                                                        ),
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
                if ( Phase != t_PHASE.QUESTION )
                {
                        makeAnswerPanel (_screenPanels);
                } else
                {
                        _screenPanels.add
                                (
                                Center
                                        (

                                        child:
                                        Text ('Press "Answer"', style: TextStyle (color: Colors.grey, fontSize: 28),),),
                                );

                        _screenPanels.add
                                (
                                Center
                                        (
                                        child:
                                        Text ('to reveal', style: TextStyle (color: Colors.grey, fontSize: 28),),),
                                );


                        _screenPanels.add
                                (
                                Center
                                        (
                                        child:
                                        Text ('the word\'s meaning', style: TextStyle (color: Colors.grey, fontSize: 28),),),
                                );
                }
                return Scaffold
                        (
                        backgroundColor: BGColor,
                        appBar: AppBar
                                (
                                backgroundColor: DiglotColor,
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