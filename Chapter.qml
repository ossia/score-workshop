import QtQuick 2.15
import QtGraphicalEffects 1.15
Item {
    id: root
    property bool isSlideContainer: true
    property bool visited: false
    property bool bigChapter: false
    property string image
    property string title
    property string subtitle

    Section {
        title: root.subtitle.length > 0 ? root.subtitle : root.title
        fontScale: 2
        Image {
            id: image
            //anchors.centerIn: parent
            anchors.fill: parent
            source: root.image
            fillMode: Image.PreserveAspectCrop
            opacity: 0
            z: -2
        }
        GaussianBlur {
            source: image
            anchors.fill: image
            radius: 16
            samples: 64
            opacity: 0.3
            z:-1
        }
    }
}
