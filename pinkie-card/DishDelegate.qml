import QtQuick 2.7

Image {
    property int delegateWidth: 100
    id: image1
    width: delegateWidth
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.bottomMargin: caption.height
    fillMode: Image.PreserveAspectFit
    source: imageSource

    Text {
        id: caption
        text: name
        width: delegateWidth
        anchors.top: parent.bottom
        elide: Text.ElideMiddle
    }
}
