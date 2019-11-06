/* (home_drawer.dart)
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

import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget
{
        @override
        _HomeDrawerState createState ()
        => _HomeDrawerState ();
}

class _HomeDrawerState extends State<HomeDrawer>
{
        @override
        Widget build (BuildContext context)
        {
                return new SizedBox(
                        width: MediaQuery
                            .of (context)
                            .size
                            .width * 0.90,
                        child: Drawer
                                (
                                child: ListView
                                        (
                                        children: <Widget>
                                        [
                                                new DrawerHeader
                                                        (
                                                        child: new Text("DRAWER HEADER.."),
                                                        decoration: new BoxDecoration(color: Colors.orange),
                                                        ),
                                                new ListTile
                                                        (
                                                        title: new Text('toto'),
                                                        ),
                                                new ListTile
                                                        (
                                                        title: new Text('zozo'),
                                                        ),
                                                new ListTile
                                                        (
                                                        title: new Text('mimi'),
                                                        ),
                                                new ListTile
                                                        (
                                                        title: new Text('riri'),
                                                        ),
                                        ],
                                        ),
                                ),
                        );
        }
}