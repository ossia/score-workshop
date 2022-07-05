import QtQuick 2.12
import dev.celtera 1.0

import org.kde.syntaxhighlighting 1.0

Page {
    property alias code: txt.text
    
    function compute()
    {
        proc.start("/home/jcelerier/scripts/builder.sh", [ txt.text ]);
    }
    
    onVisibleChanged: if(visible) compute();

    Process {
        id: proc
    }

    Rectangle {
        radius: 12
        color:  Qt.rgba(0.01372, 0.03333, 0.06078, 1.)
        border {
            width: 1
            color: Qt.rgba(0.3, 0.3, 0.2, 0.7)
        }

        x: 0.1 * parent.width
        y: 0.1 * parent.height
        width: 0.5 * parent.width
        height: 0.9 * parent.height
        TextEdit {
            id: txt
            anchors.fill: parent
            anchors.margins: 10
            color: "#EBDBB2"
            font {
                family: "Inconsolata";
                pointSize: 24
            }
            
            SyntaxHighlighter {
                id: myHighlighter
                textEdit: txt
                definition: "C++"
                theme: "gruvbox Dark"
            }
            
            onTextChanged: compute()
        }
    }
    
    Rectangle {
        radius: 12
        color:  Qt.rgba(0.01372, 0.03333, 0.06078, 1.)
        border {
            width: 1
            color: Qt.rgba(0.3, 0.3, 0.2, 0.7)
        }
        x: 0.6 * parent.width
        y: 0.1 * parent.height
        width: 0.3 * parent.width
        height: 0.9 * parent.height
        
        Text {
            id: compiled
            text: proc.standardErr !== "" ? proc.standardErr + "\n" + proc.standardOut : proc.standardOut;
            
            anchors.fill: parent
            anchors.margins: 10
            x: 0.6 * parent.width
            color: "#83A598"
            font {
                family: "Inconsolata";
                pointSize: 34
            }
            
            
        }
    }

}

