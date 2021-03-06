import QtQuick 2.7
import QtQuick.Controls 2.0
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
    property alias button_goback: back_button
    property alias button_goco: co_button

    GenericTile {
        id: main_title
        height: 100
        tile_text: qsTr("TakeAway")
        tile_shadow_size: 0
        tile_color: "#ee4f90"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1
    }

    GenericTileIcon {
        id: back_button
        height: main_title.height
        width: height
        anchors.left: parent.left
        anchors.top: parent.top
        tile_text: ''
        tile_icon_svg: 'images/left_arrow.svg'
        tile_icon_spacing: 5
        tile_shadow_size: 10
        tile_text_spacing: 0
        tile_color: "#f8b9ce"
        tile_color_hovered: "#f7d2df"
        tile_color_pressed: "#f7a1be"
        z: 1
    }

    GenericTileIcon {
        id: co_button
        height: take_away_form.height / 7
        width: height
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        tile_text: ''
        tile_icon_svg: 'images/right_arrow.svg'
        tile_icon_spacing: 5
        tile_shadow_size: 10
        tile_text_spacing: 0
        tile_color: "#f8b9ce"
        tile_color_hovered: "#f7d2df"
        tile_color_pressed: "#f7a1be"
        z: 1
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
            anchors.fill: parent
            parent_height: parent.height
            parent_width: parent.width

            dish_background: "images/dishes/dish_base.jpg"
            dish_thumbnail: "images/dishes/dish_base.jpg"
            dish_name: "My awesome dish"
            dish_description_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas nibh ut mi consequat bibendum. Morbi euismod metus vitae volutpat porta. Ut ullamcorper dolor in augue interdum, vitae porttitor tellus efficitur. Curabitur volutpat, ex sed scelerisque tincidunt, ex felis dapibus magna, in condimentum libero est et augue. Fusce sed neque est. Suspendisse mi leo, mattis sit amet tincidunt ac, efficitur quis magna. Pellentesque nec nunc a tellus mattis tincidunt. Duis ullamcorper quis nisl vitae lobortis."
            // TODO: Tweak to fill the model in
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
                tile_color: "#ee4f90"
                Layout.fillWidth: true
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                z: 1
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
                    onClicked: model_popup.open()
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
                tile_color: "#ee4f90"
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
                    onClicked: model_popup.open()
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
                tile_color: "#ee4f90"
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
                    onClicked: model_popup.open()
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
        color: '#222222'
        z: -1
    }
}
