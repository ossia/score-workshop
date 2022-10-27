import QtQuick 2.12
import QtGraphicalEffects 1.0

import ApplicationLauncher 1.0

SlideWithChapterBackground
{
    id: slide
    property alias title: title.text
    property string topText
    readonly property bool isSection: true
    readonly property bool isSubsection: true
    fontScale: 1.3

    property string score

    /*
    Image {
        z: -20
        anchors.fill: parent
        mipmap: true
        source: "backgrounds/bg1.jpeg"
    }
    */


    Application{
        id: launcher

        appName: "/home/jcelerier/build-debugsyms-fast-mold-qt6-static-release/ossia-score --no-restore "
        arguments: slide.score
     }
    Image {
        id: bg
        x: 120
        y: 0.35 * presentation.height
        mipmap: true
        opacity: 1
        source: "images/ossia.png"
        width: 0.15 * parent.width
        height: width
        MouseArea {
            id: mbg
            hoverEnabled: true
          anchors.fill: bg
          onClicked: launcher.launchScript()

        }

        RotationAnimation on rotation {
            running: true
            paused: !mbg.containsMouse
            duration: 10000
            loops: Animation.Infinite
            from: 0
            to: 360
        }
    }

    Text {
        id: title
        width: parent.width
        color: parent.titleColor

        anchors.left: bg.right
        anchors.margins: 30
        y: 0.45 * presentation.height


        font {
            pointSize: 40
            family: "Open Sans"
            weight: Font.Medium
        }
        wrapMode: Text.Wrap
    }
}
