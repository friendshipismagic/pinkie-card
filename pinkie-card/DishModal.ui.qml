import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import "models"

Item {
    id: dish_modal
    property string dish_background: "images/dishes/dish_base.jpg"
    property string dish_thumbnail: "images/dishes/dish_base.jpg"
    property string dish_name: "My awesome dish"
    property string dish_description_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas nibh ut mi consequat bibendum. Morbi euismod metus vitae volutpat porta. Ut ullamcorper dolor in augue interdum, vitae porttitor tellus efficitur. Curabitur volutpat, ex sed scelerisque tincidunt, ex felis dapibus magna, in condimentum libero est et augue. Fusce sed neque est. Suspendisse mi leo, mattis sit amet tincidunt ac, efficitur quis magna. Pellentesque nec nunc a tellus mattis tincidunt. Duis ullamcorper quis nisl vitae lobortis."
    property int dish_margins: 20
    property int dish_title_margin: 20
    property int dish_title_max_size: 40
    property int dish_buttons_height: 100
    property int dish_buttons_text_max_size: 20
    property int parent_width: 640
    property int parent_height: 480

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
        text: qsTr(dish_description_text)
        wrapMode: Text.WordWrap
        width: (parent_width / 2) - y
        anchors.top: title.bottom
        anchors.topMargin: dish_margins
        anchors.bottom: buttons.top
        anchors.left: parent.left
        anchors.leftMargin: dish_margins
        horizontalAlignment: Text.AlignJustify
        verticalAlignment: Text.AlignJustify
    }

    Image {
        id: thumbnail
        fillMode: Image.PreserveAspectFit
        anchors.top: title.bottom
        anchors.left: description.right
        anchors.right: parent.right
        anchors.topMargin: dish_margins
        anchors.rightMargin: dish_margins
        anchors.leftMargin: dish_margins
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
