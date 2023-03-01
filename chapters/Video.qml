import ".."

Chapter {
    title: "Video"
    image: "docimages/features/camera.gif"

    Section {
        title: "Setting up a window"
    }

    Section {
        title: `Adding effects: ISF shaders<br>
${link("isf.video")}`
    }

    ScoreSlide {
        title: "Making audio-reactive behaviours"
        score: "tenor2022/audioreactive.score"
    }

    Section {
        title: "Video basics: mixing, mapping"
    }

    FlickableImageSlide {
        //autoScale: true
        //fullScreen: true
        source: "../images/docs/Videomix.png"
    }

    ScoreSlide {
        title: "Camera support"
        score: "score-files/camera.score"
    }
}
