import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: intro_form
    width: 640
    height: 480
    anchors.fill: parent
    property string cur_clock: "13:37"
    property int tile_spacing: 15
    property int tile_text_max_size: 72
    property int text_padding: 10
    property alias button_here: here
    property alias button_togo: to_go

    ColumnLayout {
        z: 1
        anchors.margins: tile_spacing
        spacing: tile_spacing

        anchors.fill: parent

        GenericTile {
            id: restaurant_name
            Layout.preferredHeight: intro_form.height/6
            Layout.fillWidth: true
            tile_text: qsTr("The Pinkie Restaurant")
            tile_text_spacing_horizontal: 0.1*intro_form.width
            tile_text_spacing_vertical: 0
            tile_color: "#ee4f90"
        }

        RowLayout {
            id: buttons_layout
            spacing: tile_spacing

            GenericTileIcon {
                id: here
                Layout.fillWidth: true
                Layout.fillHeight: true
                tile_text: qsTr("On place")
                tile_text_max_size: tile_text_max_size
                tile_icon_svg: "images/intro/on-place.png"
                tile_icon_spacing: 0.2*width
                tile_color: "#f8b9ce"
            }

            GenericTileIcon {
                id: to_go
                Layout.fillWidth: true
                Layout.fillHeight: true
                tile_text: qsTr("TakeAway")
                tile_text_max_size: tile_text_max_size
                tile_icon_svg: "images/intro/takeaway.png"
                tile_icon_spacing: 0.2*width
                tile_color: "#f8b9ce"
            }
        }

        GenericTile {
            id: clock
            Layout.preferredHeight: intro_form.height/14
            Layout.fillWidth: true
            tile_text: intro_form.cur_clock
            tile_text_spacing_horizontal: 0.1*intro_form.width
            tile_text_spacing_vertical: 0
            tile_color: "#ee4f90"
        }
    }

    Rectangle {
        id: intro_background
        anchors.fill: parent
        color: "#222222"
    }
}
