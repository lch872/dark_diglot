/* (main.dart)
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

import 'package:diglot_plugin/diglot_plugin.dart';
import 'HomeForm.dart';

// Sets a platform override for desktop to avoid exceptions. See
// https://flutter.dev/desktop#target-platform-override for more info.
void _enablePlatformOverrideForDesktop ()
{
        if ( !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux) )
        {
                debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
        }
}

void main ()
{
        _enablePlatformOverrideForDesktop ();
        runApp ( DiglotApp () );
}

class DiglotApp extends StatelessWidget
{
        @override
        Widget build(BuildContext context)
        {
                return new MaterialApp(
                    home: new HomeForm());
        }
}
