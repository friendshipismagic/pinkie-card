import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Item {
    id: item1
    width: 640
    height: 480

    Text {
        id: main_title
        text: qsTr("Take Away menu chooser")
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Flickable {
        id: chooser_flickable
        anchors.topMargin: 50
        anchors.fill: parent
        clip: true

        ColumnLayout {
            id: menu_col
            anchors.fill: parent

            Text {
                text: qsTr("Starters")
                topPadding: 10
                bottomPadding: this.topPadding
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            GridLayout {
                id: starters_grid
                TakeAwayTile { menu_text: qsTr("Starter 1") }
                TakeAwayTile { menu_text: qsTr("Starter 2") }
                TakeAwayTile { menu_text: qsTr("Starter 3") }
                TakeAwayTile { menu_text: qsTr("Starter 4") }
                TakeAwayTile { menu_text: qsTr("Starter 5") }
                TakeAwayTile { menu_text: qsTr("Starter 6") }
                TakeAwayTile { menu_text: qsTr("Starter 7") }
                TakeAwayTile { menu_text: qsTr("Starter 8") }
                TakeAwayTile { menu_text: qsTr("Starter 9") }
            }

            Text {
                text: qsTr("Dishes")
                topPadding: 10
                bottomPadding: this.topPadding
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            GridLayout {
                id: dish_grid
                TakeAwayTile { menu_text: qsTr("Dish 1") }
                TakeAwayTile { menu_text: qsTr("Dish 2") }
                TakeAwayTile { menu_text: qsTr("Dish 3") }
                TakeAwayTile { menu_text: qsTr("Dish 4") }
                TakeAwayTile { menu_text: qsTr("Dish 5") }
                TakeAwayTile { menu_text: qsTr("Dish 6") }
                TakeAwayTile { menu_text: qsTr("Dish 7") }
                TakeAwayTile { menu_text: qsTr("Dish 8") }
                TakeAwayTile { menu_text: qsTr("Dish 9") }
            }

            Text {
                text: qsTr("Desserts")
                topPadding: 10
                bottomPadding: this.topPadding
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            GridLayout {
                id: dessert_grid
                TakeAwayTile { menu_text: qsTr("Dessert 1") }
                TakeAwayTile { menu_text: qsTr("Dessert 2") }
                TakeAwayTile { menu_text: qsTr("Dessert 3") }
                TakeAwayTile { menu_text: qsTr("Dessert 4") }
                TakeAwayTile { menu_text: qsTr("Dessert 5") }
                TakeAwayTile { menu_text: qsTr("Dessert 6") }
                TakeAwayTile { menu_text: qsTr("Dessert 7") }
                TakeAwayTile { menu_text: qsTr("Dessert 8") }
                TakeAwayTile { menu_text: qsTr("Dessert 9") }
            }
        }

        ScrollBar.vertical: ScrollBar {
            id: chooser_scroller
            parent: chooser_flickable.parent
            anchors.top: chooser_flickable.top
            anchors.bottom: chooser_flickable.bottom
            anchors.left: chooser_flickable.left
        }
    }
}
