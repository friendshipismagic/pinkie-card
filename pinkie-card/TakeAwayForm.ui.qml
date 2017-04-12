import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Item {
    id: take_away_form
    width: 640
    height: 480
    property int tiles_width: 100
    property int tiles_height: 100

    Text {
        id: main_title
        text: qsTr("Take Away menu chooser")
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    SwipeView {
        id: swipe_view
        anchors.topMargin: 50
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
                cellHeight: tiles_height
                cellWidth: tiles_width
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 640
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.topMargin: starters_text.height
                anchors.top: parent.top

                delegate: TakeAwayTile {
                    width: tiles_width
                    height: tiles_height
                    menu_text: dish_name
                }
                model: StartersModel {}
            }
        }

        Item {
            id: dishes_page
        }

        Item {
            id: desserts_page
        }
    }

    PageIndicator {
        id: indicator
        count: swipe_view.count
        currentIndex: swipe_view.currentIndex

        anchors.bottom: swipe_view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    /*
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
        width: take_away_form.width
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
        width: take_away_form.width
        TakeAwayTile { menu_text: qsTr("Dessert 1") }
        TakeAwayTile { menu_text: qsTr("Dessert 2") }
        TakeAwayTile { menu_text: qsTr("Dessert 3") }
        TakeAwayTile { menu_text: qsTr("Dessert 4") }
        TakeAwayTile { menu_text: qsTr("Dessert 5") }
        TakeAwayTile { menu_text: qsTr("Dessert 6") }
        TakeAwayTile { menu_text: qsTr("Dessert 7") }
        TakeAwayTile { menu_text: qsTr("Dessert 8") }
        TakeAwayTile { menu_text: qsTr("Dessert 9") }
        }*/
}
