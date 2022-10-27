import QtQuick 2.12
import ".."

Chapter {
    title: "Gallery"
    image: "gallery/carrousel.jpg"
    bigChapter: true

    property alias images: list.images


    GallerySlide {
        id: list
    }
}
