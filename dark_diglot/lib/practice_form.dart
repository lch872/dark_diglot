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


class PracticeForm extends StatefulWidget
{
        PracticeForm () // ctor
        {

        }

        @override
        _PracticeForm createState ()
        => _PracticeForm ();
}

class _PracticeForm extends State<PracticeForm>
{
        @override
        Widget build (BuildContext context)
        {
                return Scaffold
                        (
                        appBar: AppBar
                                (
                                title: Text ('Practice'),
                                ),
                        body: Center
                                (
                                       child: Text('Practice Mode'),
                                ),
                        );
        }
}