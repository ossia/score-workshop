import QtQuick 2.15
//import QtMultimedia 5.15

import ".."
import "../chapters/"
import "../chapters/distribution" as Distribution

Base {
    id: presentation

    CoverSlide {
        //title: "Timelines at the TML\n\nan ossia score 3\n★ interactive workshop ★\n"
        title: "A notation system for distributed media art\n"
        presenter: "Jean-Michaël Celerier (Concordia, celtera.dev, ossia.io, SCRIME, ...)"
        email: " \nmastodon: @jcelerier@mastodon.art\ntwitter/ig: @jcelerie\nweb: jcelerier.name\n\n\n\n"
    }

    TableOfContents {
        id: toc
    }

    Introduction { }
     ArtGallery { }
    // Resources { }
    // Examples { }

    // UiBasics { }

    ScoringLanguage { }

    //Network { }
    Distribution.Design { }

    Distribution.Authoring { }
    TimeModel { }
    Distribution.ScoreDistribution { }
    Distribution.DataDistribution { }

    Distribution.Implementation { }
    Distribution.Perspectives { }
}
