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

import 'package:markdown/markdown.dart' as md;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
/////////////import 'package:webview_flutter/webview_flutter.dart';
/////////////import 'package:flutter_html_view/flutter_html_view.dart';



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


class _PracticeForm extends State<PracticeForm> //with AfterLayoutMixin<PracticeForm>
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
                                                                        alignment: Alignment.centerLeft,

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
                                                                        alignment: Alignment.centerLeft,

                                                                        child: Text ('Un superbe texte en japonais.',
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
                                                                        alignment: Alignment.centerLeft,


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

        void makeAnnotationPanel (List <Widget> screenPanels)
        {
                final String toto = """
This is a user annotation for a given card.
Card annotation can be specified using the `Markdown` syntax.
`Markdown` syntax is much simpler and, overall, <u>more readable</u> than HTML.

With `Markdown` you can :
- Specify a bullet list items
- Put some words __bold__, <u>underline</u> or *italic*
- Put a [link](http://www.canardoux.xyz) to a www page
- ... and many other nice things :+1:

"""
                    //Optional parameters:
                    + """<ruby>
                    明日 <rp>(</rp><rt>Ashita</rt><rp>)</rp>
        漢 <rp>(</rp><rt>Kan</rt><rp>)</rp>
                                字 <rp>(</rp><rt>ji</rt><rp>)</rp>
                </ruby>""";


                screenPanels.add
                        (
                        Container
                                (
                                height: 100,
                                margin: const EdgeInsets.all(3.0),
                                //padding: const EdgeInsets.all(3.0),


                                decoration: BoxDecoration
                                        (
                                        color: ButtonColor,
                                        //border: Border.all (color: FrameColor, width: 3,),
                                        border: Border.all (color: FrameColor, width: 3,),
                                        ),

// ================================================================

// First test
// ----------
/*                                       child: Markdown
                                            (
                                            shrinkWrap: true,
                                            data: toto
                                            ),

*/

// Second test
// -----------
/**/
                                child: SingleChildScrollView
                                        (
                                        child: Html
                                                (

                                                data: md.markdownToHtml (toto),
                                                padding: EdgeInsets.all (8.0),
                                                linkStyle: const TextStyle
                                                        (
                                                        color: Colors.redAccent,
                                                        decorationColor: Colors.redAccent,
                                                        decoration: TextDecoration.underline,
                                                        ),
                                                onLinkTap: (url)
                                                {
                                                        print ("Opening $url...");
                                                        _launchURL (url)
                                                        async {
                                                                if ( await canLaunch (url) )
                                                                {
                                                                        await launch (url);
                                                                } else
                                                                {
                                                                        throw 'Could not launch $url';
                                                                }
                                                        }
                                                        _launchURL (url);
                                                },
                                                ),

                                        ),
/**/



/*
// Third test
// ----------

                               child: WebView(
                                        initialUrl: 'https://flutter.io',
                                        javascriptMode: JavascriptMode.unrestricted,
                                        ),
*/


/*
// Fourth test
// -----------
                                child : flutterWebViewString,
                                height: 300.0,
                                width: 500.0,
*/


/*
// Fifth test
// ----------

                                child: SingleChildScrollView(
                                        child: new Center(
                                                child: new HtmlView(data: toto),
                                                ),
                                        ),
*/



// ================================================================================================


                )
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
                return Row (
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
                                                                          showCard (t_PHASE.ANSWER);
                                                                  },
                                                                  ),
                                                  ),
                                          ),

                        ],
                        );
        }

        Widget _makeAnswerBottomBar (BuildContext context)
        {
                return Row (
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
                                                                        showCard (t_PHASE.QUESTION);
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
                                                                        showCard (t_PHASE.QUESTION);
                                                                },
                                                                icon: Icon (Icons.thumb_up), //`Icon` to display
                                                                label: Text ('Right'), //`Text` to display
                                                                ),
                                                ),
                                        ),

                        ],
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

        void makeMaskPanel (List <Widget> screenPanels)
        {
                if ( Phase != t_PHASE.QUESTION )
                        return;
                        if ( freeHeight > 0.0 )
                        {
                                //final _height = _screen_height - 132 - cardHeight; // 132 is a constant HACK !
                                //if ( _height > 0 )
                                screenPanels.add
                                        (
                                        InkWell
                                                (
                                                onTap: ()
                                                {
                                                        showCard (t_PHASE.ANSWER);
                                                },

                                                child: Container
                                                        (
                                                        height: freeHeight,
                                                        color: BGColor,
                                                        child: /* Column
                                                            (
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children:
                                                            [
                                                                    //Center
                                                                            //(
                                                                            //child:
                                                                            Center( child: Text ('Press "Answer" to show', style: TextStyle (color: Colors.grey, fontSize: 28),),),
                                                                            //),
                                                                    //Center
                                                                            //(
                                                                            //child:
                                                                            Expanded( child: Text ('the text meaning', style: TextStyle (color: Colors.grey, fontSize: 28),),),
                                                                            //),
                                                            ],
                                                            ),*/
                                                        Center (child: Text ('Press "Answer" to show\nthe text meaning', textAlign: TextAlign.center,
                                                                                     style: TextStyle (color: Colors.grey, fontSize: 28),),),
                                                        ),
                                                ),
                                        );
                        }
        }


        GlobalKey _keyList = GlobalKey ();
        GlobalKey _keyAppbar = GlobalKey ();
        GlobalKey _keyBottombar = GlobalKey ();

        double freeHeight = 0; // Undefined

        void _afterLayout (Duration toto)
        {
                setState (()
                          {
                                  final RenderBox renderBoxRed = _keyList.currentContext.findRenderObject ();
                                  final double _cardHeight = renderBoxRed.size.height;

                                  final RenderBox renderBoxAppbar = _keyAppbar.currentContext.findRenderObject ();
                                  final double _appbarHeight = renderBoxAppbar.size.height;

                                  final RenderBox renderBoxBottombar = _keyBottombar.currentContext.findRenderObject ();
                                  final double _bottombarHeight = renderBoxBottombar.size.height;

                                  freeHeight = MediaQuery
                                      .of (context)
                                      .size
                                      .height - _cardHeight - _appbarHeight - _bottombarHeight;
                          }
                          );
        }

        @override
        void initState ()
        {
                WidgetsBinding.instance.addPostFrameCallback (_afterLayout);
                super.initState ();
        }


        void showCard (t_PHASE newPhase)
        {
                freeHeight = 0; // Undefined
                if ( newPhase == t_PHASE.QUESTION )
                {
                        WidgetsBinding.instance.addPostFrameCallback (_afterLayout);
                }
                setState (()
                          => Phase = newPhase
                          );
        }


        @override
        Widget build (BuildContext context)
        {
                List <Widget> _screenPanels = [];
                String _formTitle = (Mode == t_MODE.BROWSE) ? 'Browser (33/1234)' : 'Average 77%';
                makeHeaderPanel (_screenPanels);
                makeKoreanPanel (_screenPanels);
                makeExamplePanel(_screenPanels);
                makeAnswerPanel (_screenPanels);
                makeAnnotationPanel (_screenPanels);
                makeMaskPanel (_screenPanels);

                return Scaffold
                        (
                        backgroundColor: BGColor,
                        appBar: AppBar
                                (
                                key: _keyAppbar,
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
                        body: //Container
                        //(
                        //height: MediaQuery
                        //   .of (context)
                        //  .size
                        //  .height - 132, // This constant is a HACK !
                        //child:
                        ListView
                                (
                                key: _keyList,
                                shrinkWrap: true,
                                children: _screenPanels,
                                ),

                        //),

                        bottomNavigationBar: BottomAppBar
                                (
                                color: BGColor,
                                key: _keyBottombar,
                                child: _makeBottomBar (
                                    context
                                    )
                                ,
                                )
                        ,
                        )
                ;
        }
}