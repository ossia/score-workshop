import Qt.labs.presentation 1.0 as Presentation
import QtQuick 2.12

Slide
{
    property alias images: list.model
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
