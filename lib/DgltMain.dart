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
                setState (
                        ( )
                    {
                            // This call to setState tells the Flutter framework that something has
                            // changed in this State, which causes it to rerun the build method below
                            // so that the display can reflect the updated values. If we changed
                            // _counter without calling setState(), then the build method would not be
                            // called again, and so nothing would appear to happen.
                            
                            //print( 'Width=${MediaQuery.of(context).size.width}');
                            //print( 'Height=${MediaQuery.of(context).size.height}');
                            totalRight = 20;
                            switch ( phase )
                            {
                                    case tPhase.QUESTION:
                                            phase = tPhase.ANSWER;
                                            break;
                                    case tPhase.ANSWER:
                                            phase = tPhase.BROWSE;
                                            break;
                                    case tPhase.BROWSE:
                                            phase = tPhase.PREVIOUS;
                                            break;
                                    case tPhase.PREVIOUS:
                                            phase = tPhase.QUESTION;
                                            break;
                            }
                            _counter++;
                    }
                        );
        }
        
        void chkChanged ( bool b )
        {
                print ( 'chkChanged' );
        }
        
        bool isChkPanelVisible ( )
        {
                return true;
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
                print ( 'Width=${MediaQuery
                    .of ( context )
                    .size
                    .width}' );
                print ( 'Height=${MediaQuery
                    .of ( context )
                    .size
                    .height}' );
                
                Container chkPanel = Container (
                        //width: 120,
                        //height: 30,
                        //constraints: BoxConstraints.expand(),
                        
                        child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                        Row ( mainAxisAlignment: MainAxisAlignment.start,
                                            
                                                  children: [
                                                          SizedBox ( width: 30, height: 30, child: Checkbox ( value: false, onChanged: chkChanged ) ),
                                                          Text ( 'Expl.  ' )] ),
                                        Row ( children: [ SizedBox ( width: 30, height: 30, child: Checkbox ( value: false, onChanged: chkChanged ) ),
                                                Text ( 'Audio' )] ),
                                        Row ( children: [ SizedBox ( width: 30, height: 30, child: Checkbox ( value: false, onChanged: chkChanged ) ),
                                                Text ( 'Hanja' )] ),

//                                                                                                new CheckboxListTile(
//                                                                                                        value: true,
//                                                                                                        onChanged: chkChanged,
//                                                                                                        title: new Text('Hi'),
//                                                                                                        controlAffinity: ListTileControlAffinity.leading,
//                                                                                                        //subtitle: new Text('Sub'),
//                                                                                                        //secondary: new Icon(Icons.archive),
//                                                                                                        activeColor: Colors.red,
//                                                                                                        ),
                                ],
                                ),
                        );
                
                
                Container stacksPanel =
                Container
                        (
                        //width: 200,
                        //height: 100,
                        margin: const EdgeInsets.all( 10.0 ),
                                // alignment: Alignment ( 0.5, 0.5 ),
                                
                                child: Column
                                        (
                                        
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>
                                        [
                                                //IntrinsicWidth(child:
                                                Row
                                                        (
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: <Widget>
                                                        [
                                                                const Text( 'Untested', textAlign: TextAlign.center,
                                                                                    style: TextStyle ( color: Colors.white ), ),
                                                                const Text( 'New', textAlign: TextAlign.center,
                                                                                    style: TextStyle ( color: Colors.white ), ),
                                                                const Text( 'Recent', textAlign: TextAlign.center,
                                                                                    style: TextStyle ( color: Colors.white ), ),
                                                                const Text( 'Older', textAlign: TextAlign.center,
                                                                                    style: TextStyle ( color: Colors.white ), ),
                                                                const Text( 'Ancient', textAlign: TextAlign.center,
                                                                                    style: TextStyle ( color: Colors.white ), ),
                                                        ],
                                                        ),
                                                //),
                                                //IntrinsicWidth( child:
                                                Row
                                                        (
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: <Widget>
                                                        [
                                                                Text ( nbrStackCards[tCardType.UNTESTED.index].toString ( ), textAlign: TextAlign.center,
                                                                               style: TextStyle ( color: Colors.white ), ),
                                                                Text ( nbrStackCards[tCardType.NEW.index].toString ( ), textAlign: TextAlign.center,
                                                                               style: TextStyle ( color: Colors.white ), ),
                                                                Text ( nbrStackCards[tCardType.RECENT.index].toString ( ), textAlign: TextAlign.center,
                                                                               style: TextStyle ( color: Colors.white ), ),
                                                                Text ( nbrStackCards[tCardType.OLDER.index].toString ( ), textAlign: TextAlign.center,
                                                                               style: TextStyle ( color: Colors.white ), ),
                                                                Text ( nbrStackCards[tCardType.ANCIENT.index].toString ( ), textAlign: TextAlign.center,
                                                                               style: TextStyle ( color: Colors.white ), ),
                                                        ],
                                                        
                                                        )
                                                //)
                                        
                                        ],
                                        
                                        ),
                        
                        );
                
                
                //Container questionPanel = Container
                Container questionPanel ( )
                {
                        return Container
                                (
                                
                                //width: 300,
                                height:
                                100
                                        ,
                                        //alignment: Alignment ( - 0.5, 0.0 ),
                                        margin: const EdgeInsets.all( 10.0 ),
                                        decoration: BoxDecoration
                                                (
                                                border: new Border.all
                                                        (
                                                    color: FRAME_COLOR,
                                                    width: 5.0,
                                                    style: BorderStyle.solid
                                                    ),
                                                
                                                borderRadius: new BorderRadius.only
                                                        (
                                                        topLeft: new Radius.circular( 20.0 ),
                                                        topRight: new Radius.circular( 20.0 ),
                                                        bottomLeft: new Radius.circular( 20.0 ),
                                                        bottomRight: new Radius.circular( 20.0 ),
                                                        ),
                                                
                                                
                                                color: PANEL_COLOR,
                                                
                                                boxShadow:
                                                [
                                                        new BoxShadow
                                                                (
                                                            color: Colors.black38,
                                                            offset: new Offset( 10.0, 10.0 ),
                                                            blurRadius: 5.0,
                                                            spreadRadius: 7.0
                                                            )
                                                ],
                                                
                                                ),
                                        
                                        child:
                                        
                                        
                                        Row (
                                                
                                                
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                // mainAxisSize: MainAxisSize.max,
                                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>
                                                [
                                                        
                                                        
                                                        Expanded ( child:
                                                                   Column ( // La colonne de gauche
                                                                            children: <Widget>[
                                                                
                                                                
                                                                                    Expanded ( child:
                                                                                               Row (
                                                                                                   children: <Widget>[ // la premiere ligne de la colonne de gauche
                                                                            
                                                                                                           Expanded ( // Word
                                                                                                                      child: Container (
                                                                                                                              margin: const EdgeInsets.all( 5 ),
                                                                                                                              decoration: const BoxDecoration( color: Colors.white ),
                                                                                                                              child: Center (
                                                                                                                                  child: Text ( 'Word', style: new TextStyle( fontSize: 30, color: Colors.black ) ) ),
                                                                                                                              ),
                                                                                                                              flex: 1,
                                                                                                                      ),
                                                                            
                                                                            
                                                                                                           Container (
                                                                                                                   margin: const EdgeInsets.all( 5 ),
                                                                                                                   width: 40,
                                                                                                                   decoration: const BoxDecoration( color: Colors.white ),
                                                                                                                   child: Center ( child: Text ( 'Gram', style: new TextStyle( fontSize: 12, color: Colors.black ) ) ),
                                                                                                                   )
                                                                    
                                                                    
                                                                                                   ] ),
                                                                                                       flex: 1,
                                                                
                                                                                               ),
                                                                
                                                                
                                                                                    Expanded ( child:
                                                                                               Row (
                                                                                                   children: <Widget>[ // la premiere ligne de la colonne de gauche
                                                                            
                                                                                                           Expanded ( // Word
                                                                                                                      child: Container (
                                                                                                                              margin: const EdgeInsets.all( 5 ),
                                                                                                                              decoration: const BoxDecoration( color: Colors.white ),
                                                                                                                              child: Center (
                                                                                                                                  child: Text ( 'Hanja', style: new TextStyle( fontSize: 30, color: Colors.red ) ) ),
                                                                                                                              ),
                                                                                                                              flex: 1,
                                                                                                                      ),


//                                                                                                           Container (
//                                                                                                                   margin: const EdgeInsets.all( 5 ),
//                                                                                                                   width: 40,
//                                                                                                                   decoration: const BoxDecoration( color: Colors.white ),
//                                                                                                                   child: Center ( child: Text ( 'Play' ) ),
//                                                                                                                   )
        
                                                                                                           teacherMode ( ) ? Container (
                                                                                                               width: 40,
                                                                                                               margin: const EdgeInsets.all( 5 ),
                                                                                                               //decoration: const BoxDecoration( color: Colors.white ),
                                                                                                               child:


//                                                                                                                        ButtonTheme (
//                                                                                                                        //minWidth: 40,
//                                                                                                                        //height: BUTTON_HEIGHT,
//                                                                                                                        child:
//                                                                                                                        RaisedButton (
//                                                                                                                        child: new Text( 'Play', style: new TextStyle(fontSize: 10, color: Colors.white ) ),
//                                                                                                                                onPressed: _incrementCounter,
//                                                                                                                       color: BUTTON_COLOR,
//                                                                                                                       elevation: 5,
//                                                                                                                        ))
                                                                                                               IconButton (
                                                                                                                       icon: Icon ( Icons.voicemail ),
                                                                                                                       color:Colors.red,
                                                                                                                       tooltip: 'Record vocal audio',
                                                                                                                       onPressed: _incrementCounter,
                                                                                                                       )
            
                                                                                                               //
                                                                                                               )
                                                                                                           : const SizedBox( ),
        
        
                                                                                                           Container (
                                                                                                               width: 40,
                                                                                                               margin: const EdgeInsets.all( 5 ),
                                                                                                               //decoration: const BoxDecoration( color: Colors.white ),
                                                                                                               child:


//                                                                                                                        ButtonTheme (
//                                                                                                                        //minWidth: 40,
//                                                                                                                        //height: BUTTON_HEIGHT,
//                                                                                                                        child:
//                                                                                                                        RaisedButton (
//                                                                                                                        child: new Text( 'Play', style: new TextStyle(fontSize: 10, color: Colors.white ) ),
//                                                                                                                                onPressed: _incrementCounter,
//                                                                                                                       color: BUTTON_COLOR,
//                                                                                                                       elevation: 5,
//                                                                                                                        ))
                                                                                                               IconButton (
                                                                                                                       color:Colors.black,
                                                                                                                       onPressed: _incrementCounter,
                                                                                                                       icon: Icon ( Icons.volume_up ),
                                                                                                                       tooltip: 'Play vocal audio',
                                                                                                                       )
                                                                                
                                                                                                               //
                                                                                                               ),
                                                                 
                                                                    
                                                                                                   ] ),
                                                                                                       flex: 1,
                                                                
                                                                                               ),
                                                        
                                                        
                                                                            ],
                                                        
                                                                            ),
                                                                   ),
                                                        
                                                        
                                                        isChkPanelVisible ( )
                                                        ? chkPanel
                                                        : const SizedBox( ),
                                                
                                                ],
                                                
                                                
                                                ),
                                
                                );
                }
                
                
                Container examplesPanel ( )
                {
                        return Container
                                (
                                //width: 200,
                                height:
                                130
                                        ,
                                        alignment: Alignment ( - 0.5, 0.0 ),
                                        margin: const EdgeInsets.all( 10.0 ),
                                        decoration: BoxDecoration
                                                (
                                                border: new Border.all
                                                        (
                                                    color: FRAME_COLOR,
                                                    width: 5.0,
                                                    style: BorderStyle.solid
                                                    ),
                                                
                                                borderRadius: new BorderRadius.only
                                                        (
                                                        topLeft: new Radius.circular( 20.0 ),
                                                        topRight: new Radius.circular( 20.0 ),
                                                        bottomLeft: new Radius.circular( 20.0 ),
                                                        bottomRight: new Radius.circular( 20.0 ),
                                                        ),
                                                
                                                
                                                color: PANEL_COLOR,
                                                
                                                boxShadow:
                                                [
                                                        new BoxShadow
                                                                (
                                                            color: Colors.black38,
                                                            offset: new Offset( 10.0, 10.0 ),
                                                            blurRadius: 5.0,
                                                            spreadRadius: 7.0
                                                            )
                                                ],
                                                
                                                ),
                                        
                                        child:
                                        Column ( // La colonne de gauche
                                                 children: <Widget>[
        
        
                                                         Expanded ( child:
                                                                    Row (
                                                                        children: <Widget>[ // la premiere ligne de la colonne de gauche
                    
                                                                                Expanded ( // Word
                                                                                           child: Container (
                                                                                                   margin: const EdgeInsets.all( 5 ),
                                                                                                   decoration: const BoxDecoration( color: Colors.white ),
                                                                                                   child: Center (
                                                                                                       child: Text ( 'Word', style: new TextStyle( fontSize: 30, color: Colors.black ) ) ),
                                                                                                   ),
                                                                                                   flex: 1,
                                                                                           ),
                    
                    
                                                                                Container (
                                                                                        margin: const EdgeInsets.all( 5 ),
                                                                                        width: 40,
                                                                                        decoration: const BoxDecoration( color: Colors.white ),
                                                                                        child: Center ( child: Text ( 'Gram', style: new TextStyle( fontSize: 12, color: Colors.black ) ) ),
                                                                                        )
            
            
                                                                        ] ),
                                                                            flex: 1,
        
                                                                    ),
                                                         ConstrainedBox(
                                                                 constraints: BoxConstraints(
                                                                         minHeight: 5,
                                                                         maxHeight: 5,
                                                                         ),
                                                                 child: Container(
                                                                         color: FRAME_COLOR,
                                                                         ),
                                                                 ),
        
                                                         Expanded ( child:
                                                                    Row (
                                                                        children: <Widget>[ // la premiere ligne de la colonne de gauche
                    
                                                                                Expanded ( // Word
                                                                                           child: Container (
                                                                                                   margin: const EdgeInsets.all( 5 ),
                                                                                                   decoration: const BoxDecoration( color: Colors.white ),
                                                                                                   child: Center (
                                                                                                       child: Text ( 'Hanja', style: new TextStyle( fontSize: 30, color: Colors.red ) ) ),
                                                                                                   ),
                                                                                                   flex: 1,
                                                                                           ),


//                                                                                                           Container (
//                                                                                                                   margin: const EdgeInsets.all( 5 ),
//                                                                                                                   width: 40,
//                                                                                                                   decoration: const BoxDecoration( color: Colors.white ),
//                                                                                                                   child: Center ( child: Text ( 'Play' ) ),
//                                                                                                                   )
                    
                                                                                teacherMode ( ) ? Container (
                                                                                    width: 40,
                                                                                    margin: const EdgeInsets.all( 5 ),
                                                                                    //decoration: const BoxDecoration( color: Colors.white ),
                                                                                    child:


//                                                                                                                        ButtonTheme (
//                                                                                                                        //minWidth: 40,
//                                                                                                                        //height: BUTTON_HEIGHT,
//                                                                                                                        child:
//                                                                                                                        RaisedButton (
//                                                                                                                        child: new Text( 'Play', style: new TextStyle(fontSize: 10, color: Colors.white ) ),
//                                                                                                                                onPressed: _incrementCounter,
//                                                                                                                       color: BUTTON_COLOR,
//                                                                                                                       elevation: 5,
//                                                                                                                        ))
                                                                                    IconButton (
                                                                                            icon: Icon ( Icons.voicemail ),
                                                                                            color:Colors.red,
                                                                                            tooltip: 'Record vocal audio',
                                                                                            onPressed: _incrementCounter,
                                                                                            )
                        
                                                                                    //
                                                                                    )
                                                                                : const SizedBox( ),
                    
                    
                                                                                Container (
                                                                                    width: 40,
                                                                                    margin: const EdgeInsets.all( 5 ),
                                                                                    //decoration: const BoxDecoration( color: Colors.white ),
                                                                                    child:


//                                                                                                                        ButtonTheme (
//                                                                                                                        //minWidth: 40,
//                                                                                                                        //height: BUTTON_HEIGHT,
//                                                                                                                        child:
//                                                                                                                        RaisedButton (
//                                                                                                                        child: new Text( 'Play', style: new TextStyle(fontSize: 10, color: Colors.white ) ),
//                                                                                                                                onPressed: _incrementCounter,
//                                                                                                                       color: BUTTON_COLOR,
//                                                                                                                       elevation: 5,
//                                                                                                                        ))
                                                                                    IconButton (
                                                                                            color:Colors.black,
                                                                                            onPressed: _incrementCounter,
                                                                                            icon: Icon ( Icons.volume_up ),
                                                                                            tooltip: 'Play vocal audio',
                                                                                            )
                        
                                                                                    //
                                                                                    ),
            
            
                                                                        ] ),
                                                                            flex: 1,
        
                                                                    ),


                                                 ],

                                                 ),
    
    
                                    
                                );
                }
                
                
                Container answerPanel =
                Container
                        (
                        //width: 200,
                        height: 70,
                                margin: const EdgeInsets.all( 10.0 ),
                                alignment: Alignment ( 0.8, 0.8 ),
                                decoration: BoxDecoration
                                        (
                                        border: new Border.all
                                                (
                                            color: FRAME_COLOR,
                                            width: 5.0,
                                            style: BorderStyle.solid
                                            ),
                                        
                                        borderRadius: new BorderRadius.only
                                                (
                                                topLeft: new Radius.circular( 20.0 ),
                                                topRight: new Radius.circular( 20.0 ),
                                                bottomLeft: new Radius.circular( 20.0 ),
                                                bottomRight: new Radius.circular( 20.0 ),
                                                ),
                                        
                                        
                                        color: PANEL_COLOR,
                                        
                                        boxShadow:
                                        [
                                                new BoxShadow
                                                        (
                                                    color: Colors.black38,
                                                    offset: new Offset( 10.0, 10.0 ),
                                                    blurRadius: 5.0,
                                                    spreadRadius: 7.0
                                                    )
                                        ],
                                        
                                        ),
                                
                                child: const Text( 'Answer', textAlign: TextAlign.center ),
                        
                        );
                
                ButtonBar questionButtonBar = ButtonBar
                        (
                        alignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 3,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                        child: new Text( 'Previous', style: new TextStyle( color: Colors.white ) ),
                                        onPressed: _incrementCounter,
                                        elevation: 5,
                                        color: BUTTON_COLOR,
                                        disabledColor: Colors.grey
                                        ) ),
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 3,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                            child: new Text( 'Show Answer', style: new TextStyle( color: Colors.white ) ),
                                            onPressed: _incrementCounter,
                                            color: BUTTON_COLOR,
                                            elevation: 5,
                                            ) ),
                        ],
                        );
                
                ButtonBar answerButtonBar = ButtonBar
                        (
                        alignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 4,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                        child: new Text( 'Wrong', style: new TextStyle( color: Colors.white ) ),
                                        onPressed: _incrementCounter,
                                        elevation: 5,
                                        color: Colors.red,
                                        disabledColor: Colors.grey
                                        ) ),
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 4,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                            child: new Text( 'Tag', style: new TextStyle( color: Colors.white ) ),
                                            onPressed: _incrementCounter,
                                            color: BUTTON_COLOR,
                                            elevation: 5,
                                            ) ),
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 4,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                        child: new Text( 'Right', style: new TextStyle( color: Colors.white ) ),
                                        onPressed: _incrementCounter,
                                        elevation: 5,
                                        color: Colors.green,
                                        disabledColor: Colors.grey
                                        ) ),
                        ],
                        );
                
                
                ButtonBar previousButtonBar = ButtonBar
                        (
                        alignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 4,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                        child: new Text( '<', style: new TextStyle( color: Colors.white ) ),
                                        onPressed: _incrementCounter,
                                        elevation: 5,
                                        color: BUTTON_COLOR,
                                        disabledColor: Colors.grey
                                        ) ),
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 4,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                            child: new Text( 'Tag', style: new TextStyle( color: Colors.white ) ),
                                            onPressed: _incrementCounter,
                                            color: BUTTON_COLOR,
                                            elevation: 5,
                                            ) ),
                                ButtonTheme (
                                    minWidth: screenWidth ( context ) / 4,
                                    height: BUTTON_HEIGHT,
                                    child: RaisedButton (
                                        child: new Text( '>', style: new TextStyle( color: Colors.white ) ),
                                        onPressed: _incrementCounter,
                                        elevation: 5,
                                        color: BUTTON_COLOR,
                                        disabledColor: Colors.grey
                                        ) ),
                        ],
                        );
                
                
                Widget browseButtonBar =
                IntrinsicHeight ( child:
                                  Column (
                                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          //crossAxisAlignment: CrossAxisAlignment.start,
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                                  //IntrinsicWidth ( child:
                                                  Row
                                                          (
                                                          //alignment: MainAxisAlignment.spaceAround,
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              children: <Widget>[
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                        
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '<<', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( '-50', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( '+50', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                    
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '>>', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                              ]
                                                          //)
                                                          ),
                                
                                
                                                  //IntrinsicWidth ( child:
                                                  Row
                                                          (
                                                          //alignment: MainAxisAlignment.spaceBetween,
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              //mainAxisSize: MainAxisSize.min,
                                                              children: <Widget>[
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                            
                                                                              child: new Text( '<', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( '!', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( 'Tag', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                    
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 5.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '>', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                              ]
                                                          ),
                                                  //  )
                        
                        
                                          ]
                                          ),
                                  );
                
                
                Widget teacherBrowseButtonBar =
                IntrinsicHeight ( child:
                                  Column (
                                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          //crossAxisAlignment: CrossAxisAlignment.start,
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                                  //IntrinsicWidth ( child:
                                                  Row
                                                          (
                                                          //alignment: MainAxisAlignment.spaceAround,
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              children: <Widget>[
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                        
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '+', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                    
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                        
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '<<', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( '-50', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( '+50', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                    
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '>>', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                              ]
                                                          //)
                                                          ),
                                
                                
                                                  //IntrinsicWidth ( child:
                                                  Row
                                                          (
                                                          //alignment: MainAxisAlignment.spaceBetween,
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                              //mainAxisSize: MainAxisSize.min,
                                                              children: <Widget>[
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                        
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '-', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                            
                                                                              child: new Text( '<', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( '!', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                                  child: new Text( 'Tag', style: new TextStyle( color: Colors.white ) ),
                                                                                  onPressed: _incrementCounter,
                                                                                  color: BUTTON_COLOR,
                                                                                  elevation: 5,
                                                                                  ) ),
                                                    
                                                                      ButtonTheme (
                                                                          minWidth: screenWidth ( context ) / 6.1,
                                                                          //minWidth: (screenWidth ( context ) - 5*GAP )/4,
                                                                          height: BUTTON_HEIGHT,
                                                                          child: RaisedButton (
                                                                              child: new Text( '>', style: new TextStyle( color: Colors.white ) ),
                                                                              onPressed: _incrementCounter,
                                                                              elevation: 5,
                                                                              color: BUTTON_COLOR,
                                                                              disabledColor: Colors.grey
                                                                              ) ),
                                                              ]
                                                          ),
                                                  //  )
                        
                        
                                          ]
                                          ),
                                  );
                
                
                List<Widget> panels = [];
                if ( mode == tMode.DEF )
                {
                        switch ( phase )
                        {
                                case tPhase.QUESTION:
                                        {
                                                panels.add ( stacksPanel );
                                                panels.add ( answerPanel );
                                                panels.add ( examplesPanel ( ) );
                                        }
                                        break;
                                
                                case tPhase.ANSWER:
                                        {
                                                panels.add ( stacksPanel );
                                                panels.add ( answerPanel );
                                                panels.add ( examplesPanel ( ) );
                                                panels.add ( questionPanel ( ) );
                                        }
                                        break;
                                
                                case tPhase.PREVIOUS:
                                        {
                                                panels.add ( stacksPanel );
                                                panels.add ( answerPanel );
                                                panels.add ( examplesPanel ( ) );
                                                panels.add ( questionPanel ( ) );
                                        }
                                        break;
                                
                                case tPhase.BROWSE:
                                        {
                                                assert(false);
                                        }
                                        break;
                        }
                } else
                {
                        switch ( phase )
                        {
                                case tPhase.QUESTION:
                                        {
                                                panels.add ( stacksPanel );
                                                panels.add ( questionPanel ( ) );
                                                panels.add ( examplesPanel ( ) );
                                        }
                                        break;
                                
                                case tPhase.ANSWER:
                                        {
                                                panels.add ( stacksPanel );
                                                panels.add ( questionPanel ( ) );
                                                panels.add ( examplesPanel ( ) );
                                                panels.add ( answerPanel );
                                        }
                                        break;
                                
                                case tPhase.PREVIOUS:
                                        {
                                                panels.add ( stacksPanel );
                                                panels.add ( questionPanel ( ) );
                                                panels.add ( examplesPanel ( ) );
                                                panels.add ( answerPanel );
                                        }
                                        break;
                                
                                case tPhase.BROWSE:
                                        {
                                                //panels.add(browseButtonBar);
                                                panels.add ( questionPanel ( ) );
                                                panels.add ( examplesPanel ( ) );
                                                panels.add ( answerPanel );
                                        }
                                        break;
                        }
                }
                
                
                Widget myButtonBar ( )
                {
                        switch ( phase )
                        {
                                case tPhase.QUESTION:
                                        return questionButtonBar;
                                        break;
                                case tPhase.ANSWER:
                                        return answerButtonBar;
                                        break;
                                case tPhase.PREVIOUS:
                                        return previousButtonBar;
                                        break;
                                case tPhase.BROWSE:
                                        return teacherMode ( ) ? teacherBrowseButtonBar : browseButtonBar;
                                        break;
                        }
                        return null;
                }
                
                return Scaffold
                        (
                    backgroundColor: BACKGROUND_COLOR,
                    appBar: AppBar
                            (
                            // Here we take the value from the MyHomePage object that was created by
                            // the App.build method, and use it to set our appbar title.
                            title: Text ( phase != tPhase.BROWSE ? 'Average ${score ( )}%' : 'Browse Mode ($cardNo/$totalCards)' /*widget.title*/ ),
                            ),
                    
                    bottomNavigationBar: myButtonBar ( ),
                    body:
                    
                    Center //Column
                            (
                            // Center is a layout widget. It takes a single child and positions it
                            // in the middle of the parent.
                            
                            ///child: Column
                            //children: <Widget>
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
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: panels,
                                    
                                    
                                    ) ) );
        } // Build
}
