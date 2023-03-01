import QtQuick 2.12
import QtGraphicalEffects 1.0
import dev.celtera 1.0

Slide
{
    Image {
        id: backgroundImg
        //anchors.centerIn: parent
        anchors.fill: parent
        source: image
        fillMode: Image.PreserveAspectCrop
        opacity: 0
        z: -2
    }
    GaussianBlur {
        source: backgroundImg
        anchors.fill: backgroundImg
        radius: 16
        samples: 64
        opacity: 0.1
        z:-1
    }
}
