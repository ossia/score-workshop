import "../.."

Chapter {
    title: "Design"
    image: "images/score.png"
    bigChapter: true

    Section {
        title: "Goals and design"
    }

    Page {
        isSection: false
        isSubsection: false
        title: "Goals"
        content: [
            "Open system: any kind of score",
            "Abstraction level for distribution: like orchestra",
            "Independence from hardware, network config, etc...",
            " User should never have to fiddle ith IPs, ports...",
            " Must be trivially relocatable and adaptable to different networks",
            " Must be compatible with browsers",
            "Exploring semantics rather than providing one perfect implementation"
        ]
    }

    Page {
        title: "Expected applications"
        content: [
            "Audio & video on separate hardware",
            "Collaborative installations",
            "Public participation with phones, etc."
        ]
    }

    Page {
        title: "Expected pipeline"
        content: ["Author in score -> define on which machine things runs -> they deport / compile / export automatically"]
    }

    Page {
        title: "Design: group abstraction"
        content: ["Design pattern: recursive properties" ]
    }

    Page {
        title: "Design: separating distribution modalities"
        content: [
            "Distribution of the scoring semantics",
            " When do things execute",
            " What executes and where",
            "Distribution of the data",
            " How to get A/V/C from a group to another",
            "Authoring distribution",
            " e.g. Google Docs, a thousand ways described in the litterature"
        ]
    }


}
