import QtQuick 2.15
import QtMultimedia 5.15

import "chapters/"

Presentation {
    id: presentation

    width: 1920
    height: 1080
    //titleColor: "#20035a"

    titleColor: "#B8BB26"
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

    Clock {
    }
    CoverSlide {
        title: "ossia score 3\ninteractive workshop\n"
        presenter: "Jean-Michaël Celerier (celtera.dev, ossia.io, SCRIME, ...)"
        email: "\n\ncontact: @jcelerier / @jcelerie / jcelerier.name\n\n\n\nICMC 2022"
    }

    function code(str)
    {
        return '<font face="Fira Code">' + str + '</font>';
    }
    function link(str)
    {
        return `<a href="${str}" style="color: white;">${str}</a>`;
    }
    
    onSlidesParsed: toc.model = presentation.slideContainers
    TableOfContents {
        id: toc
    }
    
    Introduction { }
    TimeModel { }
    UiBasics { }
    Audio { }
    Video { }
    Devices { }
    Mapping { }
    Automating { }
    Processes { }
    Presets { }
    Transport { }
    JS { }
    Music { }
    Faust { }
    Scripting { }
    Installation { }
    Remote { }
    Network { }
    Jit { }
    PureData { }
    Plugins { }
    

/*
    ScoreBar {
        id: scoreBar
        Rectangle { anchors.fill:  parent }
        // anchors.right: presentation.right
        // anchors.rightMargin: 50
        visible: !presentation.slides[presentation._lastShownSlide].hideBar
    }

    */
    Text {
        x: presentation.width - width * 1.5
        y: presentation.height - font.pixelSize - 0.02 * presentation.height
        font { pointSize: 20 }
        text: (1 + presentation._lastShownSlide) + "/" + parent.slides.length
        color: "#ffff00"
        visible: !presentation.slides[presentation._lastShownSlide].hideBar
    }

}
