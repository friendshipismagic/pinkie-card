import QtQuick 2.7

Item {
    id: generic_tile
    property int tile_text_spacing: 20
    property string tile_text: 'Tile'
    property int tile_text_max_size: 72
    property string tile_color: 'grey'
    property string tile_icon_svg: 'images/intro/noodles.svg'

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
        z: 0
    }
}
