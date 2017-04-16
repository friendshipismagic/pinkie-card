import QtQuick 2.7

Item {
    property int tile_text_spacing: 20
    property string tile_text: 'Tile'
    property string tile_color: 'grey'

    Text {
        id: main_text
        text: qsTr(tile_text)
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: tile_text_spacing
        z: 1
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: tile_color
        z: 0
    }

}
