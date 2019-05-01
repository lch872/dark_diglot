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

const BACKGROUND_COLOR = Colors.deepPurple;
const BUTTON_COLOR = Colors.blue;
const PANEL_COLOR = Colors.blue[200];
const BUTTON_HEIGHT = 30.0;

enum tCardType { UNTESTED, NEW, RECENT, OLDER, ANCIENT }

enum tPhase { QUESTION, ANSWER, PREVIOUS, BROWSE }
tPhase phase = tPhase.QUESTION;

enum tMode { TEST, HANJA, DEF, BROWSE, TEACHER_BROWSE }
tMode mode = tMode.TEST;


enum tStudent { TEACHER, DAVE, JOE, RICK, DOUG, MIKE, RICHARD, LINUS, NIKLAUS, ALAN, ANDERS }
tStudent student = tStudent.DAVE;

bool teacherMode() => (student == tStudent.TEACHER);

bool hasAlternateTranscriptions = false;
String alternateTranscription = 'Hanja';

int cardNo = 15;
int totalCards = 718;
int totalRight = 50;
int totalWrong = 50;
int score() => (totalRight + totalWrong != 0) ? totalRight * 100 ~/ (totalRight + totalWrong) : 100;


screenWidth( BuildContext context)
{
        return MediaQuery
            .of ( context )
            .size.width;
}

screenHeight( BuildContext context)
{
        return MediaQuery
            .of ( context )
            .size.height;
}

