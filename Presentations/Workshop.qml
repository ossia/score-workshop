import QtQuick 2.15
//import QtMultimedia 5.15

import ".."
import "../chapters/"

Base {
    id: presentation

    CoverSlide {
        //title: "Timelines at the TML\n\nan ossia score 3\n★ interactive workshop ★\n"
        title: "An intro to ossia score\n"
        presenter: "Jean-Michaël Celerier (Concordia, celtera.dev, ossia.io, SCRIME, ...)"
        email: " \nmastodon: @jcelerier@mastodon.art\ntwitter/ig: @jcelerie\nweb: jcelerier.name\n\n\n\n"
    }

    TableOfContents {
        id: toc
    }

    Introduction { }
    ArtGallery { }
    Resources { }
    Examples { }

    TimeModel { }
    UiBasics { }

    ScoringLanguage { }


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
}
