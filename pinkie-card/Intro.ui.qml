import QtQuick 2.7
import QtQuick.Controls 2.1
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

    ColumnLayout {
        z: 1
        anchors.rightMargin: tile_spacing
        anchors.leftMargin: tile_spacing
        anchors.bottomMargin: tile_spacing
        anchors.topMargin: tile_spacing
        spacing: tile_spacing

        anchors.fill: parent

        GenericTile {
            id: restaurant_name
            Layout.preferredHeight: intro_form.height/6
            Layout.fillWidth: true
            tile_text: qsTr("The Pinkie Restaurant")
            tile_text_spacing: 50
            tile_color: '#2ecc71'
        }

        RowLayout {
            id: buttons_layout
            spacing: tile_spacing

            GenericTileIcon {
                id: here
                Layout.fillWidth: true
                Layout.fillHeight: true
                tile_text: qsTr("For here")
                tile_text_max_size: tile_text_max_size
                tile_icon_svg: 'images/intro/noodles.svg'
                tile_icon_spacing: 0.2*width
                tile_color: '#3498db'
            }

            GenericTileIcon {
                id: to_go
                Layout.fillWidth: true
                Layout.fillHeight: true
                tile_text: qsTr("To Go")
                tile_text_max_size: tile_text_max_size
                tile_icon_svg: 'images/intro/takeaway.svg'
                tile_icon_spacing: 0.2*width
                tile_color: '#2980b9'
            }
        }

        GenericTile {
            id: clock
            Layout.preferredHeight: intro_form.height/14
            Layout.fillWidth: true
            tile_text: intro_form.cur_clock
            tile_color: '#2ecc71'
        }
    }

    Rectangle {
        id: intro_background
        anchors.fill: parent
        color: '#34495e'
    }
}
