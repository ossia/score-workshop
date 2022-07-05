import QtQuick 2.0
import QMLTermWidget 1.0

Page {
    onVisibleChanged: terminal.forceActiveFocus();
    property alias directory: mainsession.initialWorkingDirectory
    function sendText(s) {
        mainsession.sendText(s);
    }
    Component.onCompleted: sendText('clear\n');

    Rectangle {
        color: Qt.rgba(0.3, 0.3, 0.3, 1.)
        radius: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        width: parent.width * 0.85
        height: parent.height * 0.85
        QMLTermWidget {
            id: terminal
            z: 100

            anchors.centerIn: parent
            width: parent.width - 10
            height: parent.height- 10
            font.family: "Fira Code"
            font.pointSize: 24
            colorScheme: "cool-retro-term"
            session: QMLTermSession{
                id: mainsession
                initialWorkingDirectory: "$HOME"
            }
            onTerminalUsesMouseChanged: console.log(terminalUsesMouse);
            onTerminalSizeChanged: console.log(terminalSize);
            Component.onCompleted: { mainsession.startShellProgram(); }

            QMLTermScrollbar {
                terminal: terminal
                width: 20
                Rectangle {
                    opacity: 0.4
                    anchors.margins: 5
                    radius: width * 0.5
                    anchors.fill: parent
                }
            }
        }
    }

}
