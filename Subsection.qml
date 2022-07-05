import QtQuick 2.12
import QtGraphicalEffects 1.0

Slide
{
    id: slide
    property alias title: title.text
    property string topText
    readonly property bool isSection: true
    readonly property bool isSubsection: true
    fontScale: 1.3

    /*
    Image {
        z: -20
        anchors.fill: parent
        mipmap: true
        source: "backgrounds/bg1.jpeg"
    }
    */


    Item {
        id: blacktitle
        anchors.fill: parent

    Text {
        text: title.text
        width: parent.width
        color: "black"

        x: 120
        y: 0.45 * presentation.height

        font {
            pointSize: 40
            family: "Open Sans"
            weight: Font.Medium
        }
        wrapMode: Text.Wrap
    }
    }
    GaussianBlur{
        source: blacktitle
        width: blacktitle.width
        height: blacktitle.height
        radius: 2
        samples: 5
        opacity: 1.
    }
    Text {
        id: title
        width: parent.width
        color: parent.titleColor

        x: 120
        y: 0.45 * presentation.height

        font {
            pointSize: 40
            family: "Open Sans"
            weight: Font.Medium
        }
        wrapMode: Text.Wrap
    }
}
