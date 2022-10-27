import QtQuick 2.12

Chapter {
    title: "Gallery"
    image: "gallery/carrousel.jpg"
    bigChapter: true

    property alias images: list.model


    Slide
    {
        ListView {
            id: list
            width:  presentation.width
            height: presentation.height
            anchors.centerIn: parent
            orientation: Qt.Horizontal
            spacing: 0

            delegate: Image {
                source: modelData
                height: presentation.height
                width: presentation.height * sourceSize.width / sourceSize.height
                //fillMode: Image.PreserveAspectCrop
            }
        }
    }

}
