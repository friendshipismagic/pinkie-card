import QtQuick 2.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import "models"

Rectangle {
    id: forHereScreen
    anchors.fill: parent
    color: '#222222'

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
                    color: '#f8b9ce'
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

        Item {
            Layout.margins: 10
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            Button {
                id: backControl
                anchors.top: parent.top
                anchors.right: parent.horizontalCenter
                anchors.left: parent.left
                anchors.bottom: parent.bottom

                text: qsTr("Go back")

                background: Rectangle {
                    anchors.fill: parent
                    color: backControl.down ? "grey" : '#e67e22'
                    radius: 4
                }

                contentItem: Text {
                    text: backControl.text
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                onClicked: goBack()
            }

            Button {
                id: contControl
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.left: parent.horizontalCenter
                anchors.bottom: parent.bottom

                text: qsTr("Order")

                background: Rectangle {
                    anchors.fill: parent
                    color: contControl.down ? "grey" : '#2ecc71'
                    radius: 4
                }

                contentItem: Text {
                    text: contControl.text
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }


                onClicked: goCo()
            }
        }
    }
}
