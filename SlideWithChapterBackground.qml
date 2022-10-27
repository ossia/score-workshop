import QtQuick 2.12
import QtGraphicalEffects 1.0
import dev.celtera 1.0

Slide
{
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
        opacity: 0.1
        z:-1
    }
}
