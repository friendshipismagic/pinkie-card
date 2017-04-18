import QtQuick 2.4
import QtQuick.Layouts 1.1
import "models"

Rectangle {
    id: forHereScreen
    anchors.fill: parent
    color: '#34495e'

    signal goBack()
    signal goCo()

    property int marginValue: 10

    property var starters: StarterModel { }
    property var mains: MainCourseModel { }
    property var desserts: DessertModel { }
    property var drinks: DrinkModel { }

    property var myModels: [
        starters,
        mains,
        desserts,
        drinks
    ]

    RowLayout {
        id: buttons_layout
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        z: 2

        GenericTileButton {
            id: back_button
            width: 200
            height: 100
            tile_text: "Go back"
            tile_text_max_size: 30
            tile_color: '#e67e22'
            tile_color_hovered: '#f39c12'
            tile_color_pressed: '#d35400'
            onClicked: forHereScreen.goBack()
        }

        GenericTileButton {
            id: co_button
            width: 200
            height: 100
            tile_text: "Proceed"
            tile_text_max_size: 30
            tile_color: '#2ecc71'
            tile_color_hovered: '#27ae60'
            tile_color_pressed: '#16a085'
            onClicked: forHereScreen.goCo()
        }
    }

    GridLayout {
        anchors.fill: parent
        anchors.margins: marginValue
        rowSpacing: 10
        columnSpacing: 10
        columns: 2

        Image {
            id: imageRectangle
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: "images/restaurant-table-set.jpg"
        }


        Item {
            Layout.preferredWidth: 100
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: rightList.contentHeight
            Layout.fillHeight: true

            ListView {
                id: rightList
                anchors.fill: parent
                orientation: Qt.Vertical
                spacing: 5
                snapMode: ListView.SnapToItem
                boundsBehavior: Flickable.OvershootBounds
                model: MenuModel {

                }
                delegate: CategoryDelegate {
                    width: parent.width
                    height: 100
                }

                currentIndex: -1

                highlight: Rectangle {
                    color: '#3498db'
                    radius: 8
                }

                onCurrentIndexChanged: {
                    bottomList.model = myModels[currentIndex];
                }
            }
        }

        Item {
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: bottomList.contentWidth
            Layout.fillWidth: true
            ListView {
                id: bottomList
                anchors.fill: parent
                orientation: Qt.Horizontal
                spacing: 5
                boundsBehavior: Flickable.DragOverBounds
                snapMode: ListView.SnapToItem


                model: null

                populate: Transition {
                    NumberAnimation {
                        property: "opacity"
                        from: 0
                        to: 1
                        duration: 200
                    }
                }



                delegate: DishDelegate {
                    height: parent.height
                    width: 100
                }
            }
        }
    }
}