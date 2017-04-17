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

    Text {
        id: main_title
        text: qsTr("Take Away menu chooser")
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    SwipeView {
        id: swipe_view
        anchors.topMargin: main_title.height + main_title.y
        anchors.fill: parent
        currentIndex: 0

        Item {
            id: starters_page
            Text {
                id: starters_text
                text: qsTr("Starters")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                topPadding: 10
                bottomPadding: this.topPadding
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
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
            Text {
                id: dishes_text
                text: qsTr("Dishes")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                topPadding: 10
                bottomPadding: this.topPadding
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
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
            Text {
                id: desserts_text
                text: qsTr("Desserts")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                topPadding: 10
                bottomPadding: this.topPadding
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
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
}
