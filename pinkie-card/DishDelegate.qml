import QtQuick 2.7

Item {
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    height: parent.height
    width: image.width

    Image {
        id: image
        fillMode: Image.PreserveAspectFit
        source: imageSource
        anchors.bottom: caption.top
        anchors.top: parent.top
    }

    Text {
        id: caption
        text: name
        elide: Text.ElideMiddle
        anchors.bottom: parent.bottom
    }
}
