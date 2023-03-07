import ".."

Chapter {
    title: "Philosophy"
    image: "images/atelier-ossia.jpg"
    bigChapter: true

    Section {
        title: "Historical underpinnings and situation"
    }

    Section {
        title: "Development philosophy"
    }

    Section {
        identifier: "philosophy.timeflow"
        title: "Time flow, data flow"
    }

    Section {
        identifier: "philosophy.programming"
        title: "<b>Programming philosophy</b><br><br>
Core language: very simple<br>
Extend with domain-specific languages:<br>
ossia score embeds <b>many</b> programming languages<br>
 - GLSL (ISF) for video<br>
 - Faust for Audio<br>
 - JS for scripting<br>
 - Math expressions, jq<br>
 - ByteBeat, Structure Synth, ...<br>
etc...<br><br>
Use the right tool for the job"

    }

    Section {
        identifier: "philosophy.parameter"
        title: "<b>Explicit parameter abstraction</b><br><br>
Normalizes the behaviour across all<br>
peripherals<br>
Based on the Jamoma model (parameters, ...)"
    }

    Section {
        identifier: "philosophy.openended"
        title: "<b>Many ways to achieve a result</b><br><br>
Still trying to understand the complete implications<br>of the 'ossia score' object<br>
Stylistic questioning?<br>
Idioms are starting to appear<br>
Open-ended<br>"
    }

    Section {
        identifier: "philosophy.objects"
        title: "<b>Object philosophy</b><br><br>
Large objects with complex behaviours<br>
Closer to Ableton / Bitwig devices<br>
Than Max / PureData objects"
    }

    Section {
        identifier: "philosophy.objects2"
        title: "<b>In short</b><br><br>
objects should be <it>artistically meaningful</it>"
    }

    // Existing score examples
    GallerySlide {
        spacing: 400
        images: ["./score-examples/arbreintegral.png",
"./score-examples/icmc.png",
"./score-examples/metabot.png",
"./score-examples/nebula.png",
"./score-examples/nuitcherch.png",
"./score-examples/quarre.png",
"./score-examples/voyage.png",
            "./score-examples/walking.png",
            "./score-examples/hermes.png",
            "./score-examples/sonif.png"
]
    }


}
