/* (HomeForm.dart)
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
import 'package:dark_diglot/PracticeForm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

import 'package:diglot_plugin/diglot_plugin.dart';
import 'HomeForm.dart';


class HomeForm extends StatefulWidget
{
        @override
        _HomeForm createState ()
        => _HomeForm ();
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
                return Scaffold (
                                appBar: AppBar
                                        (
                                        title: const Text('Plugin example app'),
                                        ),
                                body: Center (
                                        child: RaisedButton
                                                (
                                                onPressed: ()
                                                {
                                                        Navigator.push
                                                                (
                                                                context,
                                                                MaterialPageRoute (builder: (context)
                                                                => PracticeForm ()),
                                                                );
                                                },
                                                child: Text ('Practice!'),
                                                ),
                                        ),
                        );
        }
}


