import QtQuick 2.12
import dev.celtera 1.0

import org.kde.syntaxhighlighting 1.0
Page {
    id: root
    property string file
    Rectangle {
        radius: 12
        color:  Qt.rgba(0.01372, 0.03333, 0.06078, 1.)
        border {
            width: 1
            color: Qt.rgba(0.3, 0.3, 0.2, 0.7)
        }

        anchors.horizontalCenter: parent.horizontalCenter
        y: 0.1 * parent.height
        width: 0.8 * parent.width
        height: 0.9 * parent.height
        
        Flickable {
             id: flick
       
             anchors.fill: parent
             contentWidth: edit.paintedWidth
             contentHeight: edit.paintedHeight
             clip: true
       
             function ensureVisible(r)
             {
                 if (contentX >= r.x)
                     contentX = r.x;
                 else if (contentX+width <= r.x+r.width)
                     contentX = r.x+r.width-width;
                 if (contentY >= r.y)
                     contentY = r.y;
                 else if (contentY+height <= r.y+r.height)
                     contentY = r.y+r.height-height;
             }
       
             TextEdit {
                 id: edit
                 width: flick.width
                 focus: true
                 selectByMouse: true
                 
                 color: Qt.rgba(0.972549, 0.972549, 0.941176, 1.)
                 font {
                     family: "Inconsolata";
                     pointSize: 24
                 }
                 
                 
                 SyntaxHighlighter {
                     id: myHighlighter
                     textEdit: edit
                     definition: "C++"
                     theme: "gruvbox Dark"
                 }
                 text: Files.readFile(file);
                 wrapMode: TextEdit.Wrap
                 onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
             }
         }
    }

}
