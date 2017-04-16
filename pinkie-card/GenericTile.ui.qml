import QtQuick 2.7

Item {
    id: item1
    property int tile_text_spacing: 20
    property string tile_text: 'Tile'
    property int tile_text_max_size: 72
    property string tile_color: 'grey'

    Text {
        id: main_text
        color: "#d9000000"
        text: qsTr(tile_text)
        fontSizeMode: Text.Fit
        clip: true
        font.weight: Font.Medium
        font.capitalization: Font.AllUppercase
        font.pixelSize: tile_text_max_size
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.topMargin: tile_text_spacing
        anchors.leftMargin: tile_text_spacing
        anchors.rightMargin: tile_text_spacing
        anchors.bottomMargin: tile_text_spacing
        z: 1
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: tile_color
        z: 0
    }
}
