import QtQuick 2.12

Page {
    property alias source: papersimg.source
    Flickable {
        anchors.fill: parent
        contentWidth: papersimg.width
        contentHeight: papersimg.height
        Image {
            id: papersimg
            source: "papers/page.png"
            width: presentation.width
            fillMode: Image.PreserveAspectFit
        }
    }
}
