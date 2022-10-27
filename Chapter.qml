import QtQuick 2.15
import QtGraphicalEffects 1.15
Item {
    id: currentChapter
    property bool isSlideContainer: true
    property bool visited: false
    property bool bigChapter: false
    property string image
    property string title
    property string subtitle

    Section {
        title: currentChapter.subtitle.length > 0 ? currentChapter.subtitle : currentChapter.title
        fontScale: 2
        Image {
            id: image
            //anchors.centerIn: parent
            anchors.fill: parent
            source: currentChapter.image
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
