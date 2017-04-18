import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import "models"

Item {
    id: dish_modal
    property string dish_background: "images/dishes/dish_base.jpg"
    property string dish_thumbnail: "images/dishes/dish_base.jpg"
    property string dish_name: "My awesome dish"
    property string dish_description_text: "My awesome description"
    property int dish_margins: 20
    property int dish_title_margin: 20
    property int dish_title_max_size: 40
    property int dish_buttons_height: 100
    property int dish_buttons_text_max_size: 20

    Text {
        id: title
        text: qsTr(dish_name)
        fontSizeMode: Text.Fit
        font.pointSize: dish_title_max_size
        anchors.top: parent.top
        anchors.topMargin: dish_title_margin
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: description
        text: qsTr(dish_description)
        width: (dish_modal.width / 2) - y
        anchors.top: title.bottom
        anchors.topMargin: dish_margins
        anchors.bottom: buttons.top
        anchors.left: parent.left
        anchors.right: thumbnail.left
        anchors.leftMargin: dish_margins
    }

    Image {
        id: thumbnail
        fillMode: Image.PreserveAspectFit
        anchors.top: title.bottom
        anchors.left: description.right
        anchors.right: parent.right
        anchors.topMargin: dish_margins
        anchors.rightMargin: dish_margins
        source: dish_thumbnail
    }

    RowLayout {
        id: buttons
        height: dish_buttons_height
        anchors.right: parent.right
        anchors.rightMargin: dish_margins
        anchors.left: parent.left
        anchors.leftMargin: dish_margins
        anchors.bottom: parent.bottom
        anchors.bottomMargin: dish_margins

        GenericTileButton {
            id: ok_button
            height: 100
            Layout.fillWidth: true
            tile_text: "Take"
            tile_text_max_size: dish_buttons_text_max_size
            tile_color: '#2ecc71'
            tile_color_hovered: '#27ae60'
            tile_color_pressed: '#16a085'
        }

        GenericTileButton {
            id: back_button
            height: dish_buttons_height
            Layout.fillWidth: true
            tile_text: "Go back"
            tile_text_max_size: dish_buttons_text_max_size
            tile_color: '#e67e22'
            tile_color_hovered: '#f39c12'
            tile_color_pressed: '#d35400'
        }
    }

    Image {
        id: background
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: dish_background
        z: -1
    }
}
