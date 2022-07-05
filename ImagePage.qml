import Qt.labs.presentation 1.0 as Presentation
import QtQuick 2.12

Slide
{
    textFormat: Text.RichText
    property alias source: img.source
    /*
    Image {
        z: -20
        anchors.fill: parent
        mipmap: true
        source: "backgrounds/bg2.png"
        opacity: 0.25
    }
    */

    Rectangle {
        width: img.paintedWidth + 10
        height: img.paintedHeight + 10
        anchors.centerIn: img
        radius: 2
        border {
            color: "black"
            width: 2
        }
    }

    Image {
        id: img
        anchors.centerIn: parent
        height: 0.8 * parent.height
        fillMode: Image.PreserveAspectFit
        mipmap: true
        source: "backgrounds/bg2.png"
    }
}
