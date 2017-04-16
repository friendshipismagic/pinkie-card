import QtQuick 2.7
import QtGraphicalEffects 1.0

Item {
    id: generic_tile
    property int tile_text_spacing: 20
    property string tile_text: 'Tile'
    property int tile_text_max_size: 72
    property color tile_color: 'grey'
    property string tile_icon_svg: 'images/intro/noodles.svg'
    property int tile_icon_spacing: 100
    property int tile_shadow_size: 10

    Text {
        id: main_text
        color: "#d9000000"
        text: qsTr(tile_text)
        anchors.bottom: icon.top
        anchors.bottomMargin: 0
        fontSizeMode: Text.Fit
        clip: true
        font.weight: Font.Medium
        font.capitalization: Font.AllUppercase
        font.pixelSize: tile_text_max_size
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.topMargin: tile_text_spacing
        anchors.leftMargin: tile_text_spacing
        anchors.rightMargin: tile_text_spacing
        z: 1
    }

    Image {
        id: icon
        antialiasing: true
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: tile_icon_spacing
        anchors.bottomMargin: tile_icon_spacing
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1
        source: tile_icon_svg
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: tile_color
        anchors.rightMargin: tile_shadow_size
        anchors.leftMargin: tile_shadow_size
        anchors.bottomMargin: tile_shadow_size
        anchors.topMargin: tile_shadow_size
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
