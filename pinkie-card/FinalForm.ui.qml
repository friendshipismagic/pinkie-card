import QtQuick 2.7

Item {
    id: root_form
    width: 640
    height: 480

    property alias button_back: corrections_tile
    property string time_remaining: "13:37"

    GenericTile {
        id: end_text
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        width: root_form.width * 0.8
        height: root_form.height / 6
        tile_text: qsTr("C'est parti !")
        tile_text_spacing_horizontal: 20
        tile_text_spacing_vertical: 10
    }

    GenericTile {
        id: time_remaining_tile
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: end_text.bottom
        width: root_form.width * 0.8
        height: root_form.height / 4
        tile_text: time_remaining
    }

    GenericTileIcon {
        id: corrections_tile
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: time_remaining_tile.bottom
        width: root_form.width * 0.8
        height: root_form.height / 8
        tile_text_center: false
        tile_text: qsTr("Oops, je souhaite corriger ma commande")
    }

   Rectangle {
       id: background
       anchors.fill: parent
       color: 'red'
       z: -1
   }
}
