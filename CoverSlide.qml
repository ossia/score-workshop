import Qt.labs.presentation 1.0 as Presentation
import QtQuick 2.12
import QtGraphicalEffects 1.0
Slide
{
    id: slide
    textColor: darkColor
    titleColor: itvColor
    readonly property bool isSection: true
    readonly property string topText: ""
    property alias title: title.text
    property alias presenter: presenter.text
    property alias email: email.text
    
    Image {
        id: bg
        //z: -20
        x: 0.6 * parent.width
        y: 0.2 * parent.height
        mipmap: true
        opacity: 1
        source: "images/ossia.png"
        width: 0.33 * parent.width
        height: width
        RotationAnimation on rotation {
            duration: 10000
            loops: Animation.Infinite
            from: 0
            to: 360
        }
    }

    Item {
        id: blacktext
        height:parent.height
        width: parent.width/2

        Text {
            id: blacktitle
            text: title.text
            width:parent.width
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.verticalCenterOffset: - parent.y / 3
            horizontalAlignment: Text.AlignLeft
            anchors.leftMargin: parent.width * 0.1
            anchors.topMargin: parent.height * 0.3
            font {
                pointSize: 50
                family: "Open Sans"
                weight: Font.Medium
            }

            color: "black"
            wrapMode: Text.Wrap
        }

        Text {
            id: blackpresenter
            anchors.top: blacktitle.bottom
            anchors.left: blacktitle.left
            
            width:parent.width

            text: presenter.text
            
            font {
                pointSize: 22
                family: "Open Sans"
                weight: Font.Medium
            }
            color: "black"
        }
        Text {
            id: blackemail
            anchors.top: blackpresenter.bottom
            anchors.left: blackpresenter.left
            
            width:parent.width

            text: email.text
            font {
                pointSize: 22
                family: "Open Sans"
                weight: Font.Medium
            }
            color: "black"
        }
    }


    Item {
        id: text
        height:parent.height
        width: parent.width/2
        Text {
            id: title
            width: parent.width
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.verticalCenterOffset: - parent.y / 3
            anchors.leftMargin: parent.width * 0.1
            anchors.topMargin: parent.height * 0.3
            horizontalAlignment: Text.AlignLeft
            font {
                pointSize: 50
                family: "Open Sans"
                weight: Font.Medium
            }

            color: slide.titleColor
            wrapMode: Text.Wrap
        }

        Text {
            id: presenter
            anchors.top: title.bottom
            anchors.left: title.left

            font {
                pointSize: 22
                family: "Open Sans"
                weight: Font.Medium
            }
            color: slide.textColor
        }
        Text {
            id: email
            anchors.top: presenter.bottom
            anchors.left: presenter.left

            font {
                pointSize: 22
                family: "Open Sans"
                weight: Font.Medium
            }
            color: slide.textColor
        }
    }
}
