import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Slide {
    id: toc
    property alias model: tocmodel.model
    title: "TOC"
    
    GridLayout {
        anchors.fill: toc
        rows: 4
        columns: 6
        
        Repeater {
            id: tocmodel
            Rectangle { 
              radius: 10
              color: "transparent"
              border.width: 3
              border.color: "white"
              width: 280
              height: 300
              
              Image {
                  id: img
                  width: 280
                  height: 250
                  source: modelData.image
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
                  radius: 32
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
