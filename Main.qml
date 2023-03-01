import QtQuick 2.15
import QtMultimedia 5.15

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

    Clock {
    }
    CoverSlide {
        //title: "Timelines at the TML\n\nan ossia score 3\n★ interactive workshop ★\n"
        title: "An intro to ossia score\n"
        presenter: "Jean-Michaël Celerier (Concordia, celtera.dev, ossia.io, SCRIME, ...)"
        email: " \nmastodon: @jcelerier@mastodon.art\ntwitter/ig: @jcelerie\nweb: jcelerier.name\n\n\n\n"
    }

    function code(str)
    {
        return '<font face="Fira Code">' + str + '</font>';
    }
    function link(str)
    {
        return `<a href="${str}" style="color: red; text-decoration: none;">${str}</a>`;
    }

    onSlidesParsed: toc.model = presentation.slideContainers
    TableOfContents {
        id: toc
    }

    Introduction { }
    Gallery {
        images: [
            "gallery/Big_Dyew-1920x917.jpg",
            "gallery/DID_4858.JPG",
            "gallery/MECA 2.jpg",
            "gallery/14-Virages2.jpg",
            "gallery/arbre-intégrale.jpg",
            "gallery/aleas.png",
            "gallery/sonotact.jpg",
            "gallery/Désoleil.jpg",
            "gallery/quarre.jpg",
            "gallery/Nebula_ChampignonsNeigeJaune.jpg",
            "gallery/metabot_score.jpg",
            "gallery/heimat.jpeg",
            "gallery/Qui-parle-donc_Event.jpg",
            "gallery/dome_scrime.jpg",
            "gallery/carrousel.jpg",
            "images/IMG_20200909_174046.jpg",
        ]
    }
    Resources { }
    Examples { }

    TimeModel { }
    UiBasics { }
    Audio { }
    Video { }
    Documentation { }
    Devices { }
    Automating { }

    Philosophy { }

    Mapping { }
    Processes { }
    Presets { }
    Transport { }

    Gallery {
        title: "Science"
        image: "papers/page.png"
        images: [
            "papers/petri.png",
            "papers/verification.png",
            "papers/reactiveml.png",
            "papers/colouredpetri.png",
            "papers/branching.png",
            "papers/branching2.png"
        ]
    }

    Postdoc { }

    JS { }
    Faust { }
    PureData { }
    Scripting { }

    Perspectives { }

    Bindings { }
    Music { }
    Remote { }
    Network { }

    Installation { }

    DataProcessing { }
    Jit { }
    Threedim { }
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

    property bool loadingComplete: false
    Component.onCompleted: { loadingComplete = true; console.log("ayy", loadingComplete) }
}
