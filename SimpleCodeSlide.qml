import Qt.labs.presentation 1.0 as Presentation
import QtQuick 2.12

import org.kde.syntaxhighlighting 1.0

Page {
    property alias code: tedit.text
    Rectangle {
        radius: 5
        width: 0.8 * parent.width
        height: 0.8 * parent.height
        anchors.centerIn: parent
        color: "#061229"
        
        TextEdit {
            id: tedit
            anchors.fill: parent
            color: "#ffffff"
            font { 
                family : "Fira Code"
                
                pointSize: 24
            }
            
            
            
            SyntaxHighlighter {
                id: myHighlighter
                textEdit: tedit
                definition: "C++"
                theme: "gruvbox Dark"
            }
            
        }
    }
}
