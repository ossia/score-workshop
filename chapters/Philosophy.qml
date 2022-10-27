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
        title: "Time flow, data flow"
    }

    Section {
        identifier: "philosophy.programming"
        title: "Programming philosophy<br><br>
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
        title: "Explicit parameter abstraction"
    }

    Section {
        title: "Many ways to achieve a result<br><br>
Still trying to understand the complete implications<br>of the 'ossia score' object<br>
Stylistic questioning?<br>  Idioms are starting to appear<br>
Open-ended<br>"
    }

    Section {
        title: "Object philosophy<br>
Large objects with complex behaviours<br>
Closer to Ableton / Bitwig devices<br>
Than Max / PureData objects"
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
"./score-examples/voyage.png"
]
    }


}
