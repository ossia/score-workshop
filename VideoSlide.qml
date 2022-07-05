import QtQuick 2.12
import QtMultimedia 5.15
Subsection {
    title: "Embedded, web"
    property int startPos: 0
    property alias source: vembedded.source
    property alias rate: vembedded.playbackRate

    onVisibleChanged: vembedded.stop();

    Image {
        z: -1
        source: "play.png"
        anchors.fill: parent
    }
    Video {
      id: vembedded
      autoLoad: true
      autoPlay: false
      anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if( vembedded.playbackState == MediaPlayer.PlayingState)
            {
                vembedded.stop();
            }
            else
            {
                vembedded.seek(startPos);
                vembedded.play();
            }
        }

    }
}
