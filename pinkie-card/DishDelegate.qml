import QtQuick 2.7

Item {
    height: parent.height
    width: image.width

    Image {
        id: image
        fillMode: Image.PreserveAspectFit
        source: imageSource
    }

    Text {
        id: caption
        text: name
        elide: Text.ElideMiddle
    }
}
