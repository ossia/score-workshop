import QtQuick 2.0

Item {
    id: root
    scale: parent.width / 1920
    width: 80 * count
    height: 20
    y: 0.06 * presentation.height
    z: 9999

    readonly property var sections: computeSections()
    readonly property int count: sections.length
    function computeSections()
    {
        var k = [];
        for(var i = 0; i < presentation.slides.length; i++)
        {
            if(presentation.slides[i].isSection)
            {
                k.push({slideIndex: i, slide: presentation.slides[i]});
            }
        }
        return k;
    }


    Row {
        id: r1
        x: 6
        spacing: 0
        Repeater {
            model: root.count - 1

            Rectangle {
                y: 8
                width: 60
                height: 3
                Behavior on color { ColorAnimation { easing.type: Easing.OutSine } }
                color: if(sections[index].slideIndex < presentation._lastShownSlide - 1) {
                           "#00ff00"
                       } else if(sections[index].slideIndex == presentation._lastShownSlide - 1) {
                           "#ffff00"
                       } else { itvColor }
            }
        }
    }

    Row {
        spacing: 40
        Repeater {
            model: root.count

            Rectangle {
                width: 20
                height: 20
                color: area.containsMouse ? "white" : "transparent"
                radius: 10

                MouseArea {
                    id: area
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: presentation.currentSlide = sections[index].slideIndex
                }

                Rectangle {
                    id: rect
                    anchors.centerIn: parent

                    width: 10
                    height: 10
                    radius: 5

                    Image {
                        id: img
                        cache: false
                        visible: sections[index].slide.topText.length > 0
                        source: "images/trigger.png"
                        anchors.horizontalCenter: rect.horizontalCenter
                        anchors.bottom: parent.top
                        anchors.bottomMargin: 3
                        width: 18
                        fillMode: Image.PreserveAspectFit
                        smooth: false
                    }

                    Text {
                        y: 10
                        anchors.horizontalCenter: rect.horizontalCenter
                        anchors.bottom: img.top
                        anchors.bottomMargin: 0
                        visible: text.length > 0
                        text: sections[index].slide.topText
                        font {
                            pixelSize: 20
                            family: presentation.fontFamily
                        }
                        //renderType: Text.NativeRendering
                        horizontalAlignment: Text.AlignHCenter

                        color: itvColor
                    }

                    Behavior on color { ColorAnimation { easing.type: Easing.OutSine } }
                    color: if(sections[index].slideIndex < presentation._lastShownSlide) {
                               "#00ff00"
                           } else if(sections[index].slideIndex == presentation._lastShownSlide) {
                               "#ffff00"
                           } else { itvColor }
                }
            }
        }
    }
}
