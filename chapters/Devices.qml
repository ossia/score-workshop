import ".."

Chapter {
    title: "Devices"
    image: "docimages/features/localtree.png"
    // Section {
    //     title: "OSC-ish tree model"
    // }

    ScoreSlide {
        title: "OSC"
        score: "score-files/osc.score"
    }
    ScoreSlide {
        title: "MIDI: the same"
    }
    /*
    Section {
        title: "TouchOSC support"
    }*/
    Section {
        title: 'OSCQuery<br><br>
<a href="https://github.com/Vidvox/OSCQueryProposal">https://github.com/Vidvox/OSCQueryProposal</a><br><br>
Example later with PureData<br>'
    }
    ScoreSlide {
        title: "ArtNet"
    }
    ScoreSlide {
        title: "Gamepads"
        score:  "tenor2022/gamepad.score"
    }
    Section {
        title: "WebSocket, HTTP, Serial port"
        SlideReminesce
        {
            identifier: "philosophy.parameter"
        }
    }
}
