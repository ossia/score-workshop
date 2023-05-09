import "../.."

Chapter {
    title: "Implementation"
    image: "images/score.png"
    bigChapter: true

    ScoreSlide {
        title: "Implementation"
    }

    Page {
        title: "Implementation(s)"
        content: [
            "Editor",
            "Player",
            "Works across OSes",
            "Goal: integration in engines / external environments for better sync (e.g. player in max, etc.)",
            " Integration with libossia devices in such engines"
        ]
    }

    Page {
        title: "Protocols"
        content: [
            "Control: OSC-ish over WebSockets",
            "Not formally documented, but not very hard",
            "Data: <next slide>"
        ]
    }

    Page {
        title: "Data"
        content: [
            "Audio",
            " Tried Opus",
            " Tried WebRTC",
            " >2 channel: uncommon",
            " Currently homegrown",
            "Video",
            " Tried WebRTC",
            " Currently homegrown"
        ]
    }

    Page {
        title: "Data: future goals"
        content: [
            "Adapt protocol automatically to situation",
            " NDI, netjack in local networks?",
            " WebRTC over internet or when browsers implied?",
            "  Some capability API is needed",
            "Latency compensation?"
        ]
    }

    Page {
        title: "Architecture"
        content: [
          "Research prototype",
          " Client <-> server for everything",
          " Assumes cooperation of the host hardware",
          "  Synchronized clocks, well-setup hardware, etc.",
          "  (given with AES67, AVB...)"
        ]
    }
}
