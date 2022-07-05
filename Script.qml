import QtQuick 2.12

Item {
    id: contentArea
    property string text
    x: parent.width * 0.05
    y: parent.height * 0.2
    width: parent.width * 0.9
    height: parent.height * 0.7
    Text {
        textFormat: Text.RichText
        font.pointSize: 30
        text: "<font face=\"Monospace\">" + contentArea.text + "</font>"
    }
}
