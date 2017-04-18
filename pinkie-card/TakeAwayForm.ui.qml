import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import "models"

Item {
    id: take_away_form
    width: 640
    height: 480
    property int tiles_width: 300
    property int tiles_height: 300
    property int tile_spacing: 15
    property int tile_text_max_size: 72
    property int text_padding: 10
    property int popup_spacing: 100

    GenericTile {
        id: main_title
        height: 50
        tile_text: qsTr("Take Away")
        tile_shadow_size: 0
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Popup {
        id: model_popup
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        x: popup_spacing
        y: popup_spacing
        width: take_away_form.width - 2 * popup_spacing
        height: take_away_form.height - 2 * popup_spacing

        DishModal {
            id: model_modal
        }

    }

    SwipeView {
        id: swipe_view
        anchors.topMargin: main_title.height + main_title.y
        anchors.fill: parent
        currentIndex: 0

        Item {
            id: starters_page
            GenericTile {
                id: starters_text
                height: 50
                tile_text: qsTr("Starters")
                Layout.fillWidth: true
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            GridView {
                id: starters_grid
                // empty = parent.width - cellWidth * Math.floor(parent.width/cellWidth)
                width: cellWidth * Math.floor(parent.width / cellWidth)
                contentHeight: tiles_height
                contentWidth: tiles_width
                anchors.topMargin: starters_text.height
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                cellHeight: tiles_height
                cellWidth: tiles_width

                delegate: GenericTileIcon {
                    width: tiles_width
                    height: tiles_height
                    tile_text: dish_name
                    tile_icon_svg: dish_thumbnail
                    tile_color: 'green'
                    tile_icon_fullscreen: true
                }
                model: StartersModel {}
            }
        }

        Item {
            id: dishes_page

            GenericTile {
                id: dishes_text
                height: 50
                tile_text: qsTr("Dishes")
                Layout.fillWidth: true
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            GridView {
                id: dishes_grid
                width: cellWidth * Math.floor(parent.width / cellWidth)
                contentHeight: tiles_height
                contentWidth: tiles_width
                anchors.topMargin: starters_text.height
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                cellHeight: tiles_height
                cellWidth: tiles_width

                delegate: GenericTileIcon {
                    width: tiles_width
                    height: tiles_height
                    tile_text: dish_name
                    tile_icon_svg: dish_thumbnail
                    tile_color: 'blue'
                    tile_icon_fullscreen: true
                }

                model: DishesModel {}
            }
        }

        Item {
            id: desserts_page

            GenericTile {
                id: desserts_text
                height: 50
                tile_text: qsTr("Desserts")
                Layout.fillWidth: true
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            GridView {
                id: desserts_grid
                width: cellWidth * Math.floor(parent.width / cellWidth)
                contentHeight: tiles_height
                contentWidth: tiles_width
                anchors.topMargin: starters_text.height
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                cellHeight: tiles_height
                cellWidth: tiles_width

                delegate: GenericTileIcon {
                    width: tiles_width
                    height: tiles_height
                    tile_text: dish_name
                    tile_icon_svg: dish_thumbnail
                    tile_color: 'red'
                    tile_icon_fullscreen: true
                }

                model: DessertsModel {}
            }
        }
    }

    PageIndicator {
        id: indicator
        count: swipe_view.count
        currentIndex: swipe_view.currentIndex

        anchors.bottom: swipe_view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: 'blue'
        z: -1
    }
}
