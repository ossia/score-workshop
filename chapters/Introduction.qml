import ".."

Chapter {
    title: "Introduction"
    image: "images/score.png"
    bigChapter: true

    Section {
        title: `Downloading ossia: ${link("https://ossia.io")}<br>
Mac 10.15+, Linux (all x86_64 + RPi), Windows (7+)<br>
Should build from source everywhere (but slow)`
    }
    Section {
        title: `Documentation: ${link("https://ossia.io/score-docs")}`
    }
    Section {
        title: `Youtube tutorials: ${link("https://ossia.io/")}`
    }
    Section {
        title: `Forum: ${link("https://forum.ossia.io/")}<br>
Chat (Matrix-compatible!): ${link("https://gitter.im/ossia/score")}<br>
Discord: ${link("https://discord.gg/8Hzm4UduaS")}`
    }
    ImageSlide {
        autoScale: true
        fullScreen: true
        source: "../images/score.png"
    }
    ImageSlide {
        autoScale: true
        fullScreen: true
        bgColor: "white"
        source: "../images/score-history.png"
    }

    Section {
        title: "Why ossia, why score"
    }
    Section {
        title: "Free & open-source"
    }
    Section {
        title: "Cross-platform<br><br>Mac / Win / Linux<br>Web (WIP)<br>Embedded ARM (Raspberry Pi, etc.)"
    }
    Section {
        title: "Integrated<br><br>
Works with your tools, protocols, etc. <br>
OSC, DMX, MIDI, serial, JavaScript..."
    }
    Section {
        title: "Learns from the past<br>Reifies common media arts patterns"
    }
    Section {
        title: "High-tech<br><br>
Stays very up-to-date wrt. libraries, C++ versions, etc<br>
Codebase constantly modernized and simplified<br><br>
Leads to fast development velocity:<br> -> new features come quick!"
    }
}
