import QtQuick 2.12

Page {
    property alias code: txt.text
    Rectangle {
        radius: 12
        color:  Qt.rgba(0.11372, 0.13333, 0.16078, 1.)
        border {
            width: 1
            color: Qt.rgba(0.3, 0.3, 0.2, 0.7)
        }

        anchors.centerIn: parent
        width: txt.implicitWidth * 1.1
        height: txt.implicitHeight * 1.1
        Text {
            id: txt
            anchors.centerIn: parent
            color: Qt.rgba(0.972549, 0.972549, 0.941176, 1.)
            font {
                family: "Fira Code";
                pointSize: 20
            }
        }
    }

}
