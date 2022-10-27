/****************************************************************************
**
** Copyright (C) 2012 Digia Plc and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/legal
**
** This file is part of the QML Presentation System.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and Digia.  For licensing terms and
** conditions see http://qt.digia.com/licensing.  For further information
** use the contact form at http://qt.digia.com/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU Lesser General Public License version 2.1 requirements
** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, Digia gives you certain additional
** rights.  These rights are described in the Digia Qt LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3.0 as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU General Public License version 3.0 requirements will be
** met: http://www.gnu.org/copyleft/gpl.html.
**
**
** $QT_END_LICENSE$
**
****************************************************************************/



import QtQuick 2.0

Item {
    id: clock
    z:10
    anchors.fill: parent
    property real fontSize: parent.height * 0.05
    property real fontScale: 0.5
    property color textColor: parent.textColor !== undefined ? parent.textColor : "black"
    property string fontFamily: parent.fontFamily !== undefined ? parent.fontFamily : "Helvetica"

    function currentTime() {
        var d = new Date();
        var m = d.getMinutes();
        if (m < 10) m = "0" + m;
        return d.getHours() + ":" + m;
    }


    Text {
        id: clocktext
        text: clock.currentTime();

        color: textColor;
        font.family: fontFamily;
        font.pixelSize: fontSize * fontScale;

        anchors {
            left: parent.left;
            leftMargin: font.pixelSize  / 1.5;
            bottom: parent.bottom;
            bottomMargin: font.pixelSize / 2.;
        }

        Timer {
            interval: 60000;
            repeat: true;
            running: true
            onTriggered: clocktext.text = clock.currentTime();
        }
    }


    Text {
        color: textColor;
        font.family: fontFamily;
        font.pixelSize: fontSize * fontScale;

        anchors {
            right: parent.right;
            rightMargin: font.pixelSize / 1.5;
            bottom: parent.bottom;
            bottomMargin: font.pixelSize / 2.;
        }

        // x: presentation.width - width * 1.5
        // y: presentation.height - font.pixelSize - 0.02 * presentation.height
        //font { pointSize: 20 }
        text: (1 + presentation._lastShownSlide) + "/" + presentation.slides.length
        //color: "#ffff00"
        visible: true//!presentation.slides[presentation._lastShownSlide].hideBar

        MouseArea {
            anchors.fill: parent
            onClicked: presentation.currentSlide = 1
        }
    }
}
