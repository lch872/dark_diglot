/* (globals.dart)
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
import 'package:flutter/material.dart';
import 'package:dark_diglot/home_form.dart';
import 'package:dark_diglot/practice_form.dart';

const Purple = const  Color(0xFF4d2d89);
const SteelBlueColor = const  Color(0xFF4682B4);
const SlateBlueColor = const Color(0xFF6A5ACD);
const LimeColor = const Color(0xFFFAF0E6);

const DiglotColor = SteelBlueColor;
const BGColor =  SteelBlueColor;
const ButtonColor = LimeColor;
const FrameColor = const Color(0xFF2F2376);
const LabelColor =  Colors.amber;
const double FrameWidth = 3;

enum t_MODE
{
        PRACTICE,
        ALTERNATE,
        ENGLISH,
        BROWSE,
        AUTO,
}

t_MODE Mode = t_MODE.PRACTICE;
void setMode(t_MODE mode)
{
        theHomeForm.setState(() => Mode = mode);
}



enum t_PHASE
{
        QUESTION,
        ANSWER,
        PREVIOUS,
}

t_PHASE Phase = t_PHASE.QUESTION;
void setPhase(t_PHASE phase)
{
        thePracticeForm.setState(() => Phase = phase);
}