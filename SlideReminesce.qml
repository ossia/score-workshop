import QtQuick 2.12
import QtGraphicalEffects 1.15
Column {
    id: container
    property string identifier

    x: 2 * parent.width / 3
    y: 50
    width: 1920 / 3
    height: 1080

    Text {
        text: "Remember!"

        width: 400
        height: 70
        color: sectionColor
        linkColor: Qt.lighter(color)

        font {
            pointSize: 30 * fontScale
            family: "Open Sans"
            weight: Font.Medium
            underline: true
        }
        wrapMode: Text.Wrap
    }

    Image {
        id: smallimg
        width: 1920 / 3
        height: 1080 / 3
        z: -2
        // smooth: true
        mipmap: true
        GaussianBlur {
            source: smallimg
            anchors.fill: smallimg
            radius: 32
            samples: 64
            opacity: 0.5
            z:-1
        }
    }

    onVisibleChanged: {
        if(!loadingComplete)
            return;

        if(visible)
        {
            for(let slide of presentation.slides)
            {
                if(slide.identifier === identifier)
                {
                    slide.grabToImage((result) => { smallimg.source = result.url; }, Qt.size(1920 , 1080 ));
                    break;
                }
            }
        }
    }

}
