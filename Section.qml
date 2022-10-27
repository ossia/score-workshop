import QtQuick 2.12
import QtGraphicalEffects 1.0
import dev.celtera 1.0

Slide
{
    id: slide
    property alias title: title.text
    property string topText
    readonly property bool isSection: true

    property string process
    property var args: [ ]

    fontScale: process === "" ? 1 : 1.5


    function compute()
    {
        proc.start(process, args);
    }

    Process {
        id: proc
    }

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
        anchors.verticalCenter: parent.verticalCenter
        anchors.topMargin: 40

        x: 120
//        y: 0.45 * presentation.height

        font {
            pointSize: 40 * fontScale
            family: "Open Sans"
            weight: Font.Medium
            underline: ma.containsMouse
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
        color: sectionColor
        linkColor: Qt.lighter(color)

        x: 120
        anchors.verticalCenter: parent.verticalCenter
        anchors.topMargin: 400

        font {
            pointSize: 40 *  fontScale
            family: "Open Sans"
            weight: Font.Medium
            underline: ma.containsMouse
        }
        wrapMode: Text.Wrap
        MouseArea { id: ma
            anchors.fill: title
            enabled: process !== ""
            hoverEnabled: true
            onClicked: compute()
        }
    }


    Image {
        id: image
        //anchors.centerIn: parent
        anchors.fill: parent
        source: parent.parent.image
        fillMode: Image.PreserveAspectCrop
        opacity: 0
        z: -2
    }
    GaussianBlur {
        source: image
        anchors.fill: image
        radius: 16
        samples: 64
        opacity: 0.1
        z:-1
    }
}
