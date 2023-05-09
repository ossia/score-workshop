import QtQuick 2.15
//import QtMultimedia 5.15

import "chapters/"

Presentation {
    id: presentation

    width: 1920
    height: 1080
    //titleColor: "#20035a"

    //titleColor: "#B8BB26"
    titleColor: Qt.lighter(sectionColor)
    arrowNavigation: false
    fontFamily: "Fira Sans"
    fontScale: 1.0

    keyShortcutsEnabled: false
    property color sectionColor: itvColor
    property color itvColor: Qt.rgba(3/255, 195/255, 221/255, 1.)
    property color darkColor: Qt.rgba(3/255, 155/255, 201/255, 1.)
    textColor: Qt.rgba(180/255, 220/255, 220/255, 1.)
    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(37/255, 41/255, 48/255, 1.)
    }
    // Component.onCompleted: currentSlide = 8


    function code(str)
    {
        return '<font face="Fira Code">' + str + '</font>';
    }
    function link(str)
    {
        return `<a href="${str}" style="color: red; text-decoration: none;">${str}</a>`;
    }


    Clock {
    }


    onSlidesParsed: toc.model = presentation.slideContainers
    property bool loadingComplete: false
}
