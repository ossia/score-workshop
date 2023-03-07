import ".."
import QtQuick.Layouts 1.15
Chapter {
    title: "Scoring"
    bigChapter: true
    image: "images/_DSF6088.JPG"


    Section {
        title: "Interactive scores elements"
    }

    ScoreSlide {
        title: "Triggering and conditions"
        scaleRatio: 2
        score: "score-explanations/timemodel.score"
    }

//    Section {
//        title: "Designing for intermedia scores"
//    }
//    Section {
//        title: "Evolving the language"
//    }
//    Slide {
//        title: "Loops to graphs"
//    }

    ScoreSlide {
        title: "Intersecting time-line and patch"
        scaleRatio: 2
        score: "score-explanations/timeline-and-patches.score"
    }

    ScoreSlide {
        title: "Patch any content:\naudio, video, midi, textures, geometries"
        score: "score-explanations/all-media.score"
    }

    ScoreSlide {
        title: "Patch in time (audio / messages / MIDI only)"
        scaleRatio: 2
        score: "score-explanations/glutton.score"
    }

    ScoreSlide {
        title: "Patch with addresses"
    }
    // Slide {
    //     title: "Patch across timelines"
    //     content: [
    //          "Multiple behaviours: temporal, etc..."
    //     ]
    // }

    // Section {
    //     title: "Work-in-progress: distribution and networking primitives"
    // }
}
