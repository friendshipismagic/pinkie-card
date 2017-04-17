import QtQuick 2.0

Column {
    anchors.left: parent.left
    anchors.right: parent.right
    spacing: 0

    Image {
        anchors.right: parent.right
        anchors.left: parent.left
        fillMode: Image.PreserveAspectFit
        source: imageSource
    }

    Text {
        text: name
        elide: Text.ElideMiddle
    }
}
