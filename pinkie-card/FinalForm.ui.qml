import QtQuick 2.7

Item {
    id: root_form
    width: 640
    height: 480

    property alias button_back: corrections_tile
    property string time_remaining: "13:37"

    Image {
        id: image
        y: 291
        width: 100
        height: 100
        anchors.bottom: corrections_tile.top
        anchors.bottomMargin: -32
        anchors.left: corrections_tile.left
        anchors.leftMargin: 17
        source: "images/pinkie-oops.png"
    }

    GenericTile {
        id: end_text
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: time_remaining_tile.top
        anchors.bottomMargin: 50
        width: root_form.width * 0.8
        height: root_form.height / 6
        tile_color: "#ee4f90"
        tile_text: qsTr("C'est parti !")
        tile_text_spacing_horizontal: 20
        tile_text_spacing_vertical: 10
    }

    GenericTile {
        id: time_remaining_tile
        anchors.centerIn: parent
        width: root_form.width * 0.8
        height: root_form.height / 4
        tile_color: "#ee4f90"
        tile_text: time_remaining
    }

    GenericTileIcon {
        id: corrections_tile
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: time_remaining_tile.bottom
        width: root_form.width * 0.8
        height: root_form.height / 8
        tile_icon_svg: "images/pinkie-oops.png"
        tile_color_hovered: "#f7d2df"
        tile_color_pressed: "#f7a1be"
        tile_color: "#f8b9ce"
        tile_text_center: false
        tile_text: qsTr("Oops, je souhaite corriger ma commande")
    }

   Rectangle {
       id: background
       anchors.fill: parent
       color: "#222222"
       z: -1
   }
}
