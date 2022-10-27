import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Slide {
    id: toc
    property alias model: tocmodel.model
    title: "TOC"

    Flickable {
        anchors {
            topMargin: 200
            bottomMargin: 200
            leftMargin: 50
            rightMargin: 50
        }
        flickableDirection: Flickable.HorizontalFlick

        anchors.fill: toc
        contentHeight: 800
        contentWidth: gl.implicitWidth
    GridLayout {
            id: gl
        rows: 2
        flow: GridLayout.TopToBottom
        columns: tocmodel.model.length / 2 + 1

        Repeater {
            id: tocmodel
            Rectangle {
              id: itemrect
              property real chapterScaling: modelData.bigChapter ? 2 : 1
              radius: 10
              color: "transparent"
              border.width: 3
              border.color: "white"
              width: 280
              height: 300 * chapterScaling
              Layout.rowSpan: chapterScaling
              clip: true

              Image {
                  id: img
                  x: 3
                  y: 3
                  width: 280 - 6
                  height: itemrect.height - 50
                  source: modelData.image
                  fillMode: Image.Pad
                  z: -5
              }

              Colorize {
                  id: col
                  anchors.fill: img
                  source: img
                  saturation: 0
                  visible: !modelData.visited
                  z: -4
              }

              GaussianBlur {
                  id: gb
                  visible: !ma.containsMouse
                  anchors.fill: img
                  source: modelData.visited ? img : col
                  radius: modelData.visited ? 16 : 32
                  samples: 64
                  transparentBorder: false
                  z: -3
              }

              Text {
                  color: "white"
                  font.pointSize: 24
                  text: modelData.title
                  anchors.horizontalCenter: parent.horizontalCenter
                  anchors.top: img.bottom
              }

              MouseArea {
                  id: ma
                  anchors.fill: parent
                  acceptedButtons: Qt.LeftButton
                  enabled: true
                  hoverEnabled: true
                  onClicked: {
                      presentation.currentSlide = modelData.children[0].slideIndex
                  }
              }
            }
        }
    }
    }
}
