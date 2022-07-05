import QtQuick 2.12

Slide
{
    textFormat: Text.RichText
    property alias source: img.source
    property bool hideBar: true
    fontSize: 0
    Image {
        id: img
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        mipmap: true
    }
}
