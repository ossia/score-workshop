import Qt.labs.presentation 1.0 as Presentation
import QtQuick 2.12

Slide
{
    textFormat: Text.RichText
    
    readonly property bool isSection: true
    readonly property bool isSubsection: true
    readonly property string topText: ""
    /*
    Image {
        z: -20
        anchors.fill: parent
        mipmap: true
        source: "backgrounds/bg2.png"
        opacity: 0.25
    }
    */
}
