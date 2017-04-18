import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import 'models/'

Item {
    width: 640
    height: 480

    GenericTile {
        id: title
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 50
        tile_text: qsTr("Checkout")
    }

    ListView {
        id: checkout_list
        anchors.top: title.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: buttons.top

        model: CheckoutModel {}
        delegate: CheckoutDelegate {
            anchors.left: parent.left
            anchors.right: parent.right
        }
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
            id: back_button
            height: 100
            Layout.fillWidth: true
            tile_text: "Go back"
            tile_text_max_size: dish_buttons_text_max_size
            tile_color: '#e67e22'
            tile_color_hovered: '#f39c12'
            tile_color_pressed: '#d35400'
        }

        GenericTileButton {
            id: ok_button
            height: 100
            Layout.fillWidth: true
            tile_text: "Proceed"
            tile_text_max_size: dish_buttons_text_max_size
            tile_color: '#2ecc71'
            tile_color_hovered: '#27ae60'
            tile_color_pressed: '#16a085'
        }
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: '#212121'
        z: -1
    }
}
