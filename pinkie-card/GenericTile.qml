import QtQuick 2.7
import QtGraphicalEffects 1.0

Item {
    id: generic_tile
    property int tile_text_spacing_horizontal: 20
    property int tile_text_spacing_vertical: tile_text_spacing_horizontal
    property string tile_text: 'Tile'
    property int tile_text_max_size: 72
    property color tile_color: 'grey'
    property int tile_shadow_size: 10

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
        anchors.fill: background
        anchors.topMargin: tile_text_spacing_vertical
        anchors.leftMargin: tile_text_spacing_horizontal
        anchors.rightMargin: tile_text_spacing_horizontal
        anchors.bottomMargin: tile_text_spacing_vertical
        z: 1
    }

    Rectangle {
        id: background
        color: tile_color
        anchors.fill: parent
        anchors.margins: tile_shadow_size
        z: 0
    }

    DropShadow {
        id: tile_shadow
        anchors.fill: background
        horizontalOffset: 5
        radius: 8
        verticalOffset: horizontalOffset
        samples: 17
        color: "#80000000"
        source: background
    }
}
