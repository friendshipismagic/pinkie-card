import QtQuick 2.4
import QtQuick.Layouts 1.1
import "models"

Rectangle {
    id: forHereScreen
    anchors.fill: parent
    color: '#34495e'


    property int marginValue: 10

    property var starters: StarterModel { }
    property var mains: MainCourseModel { }
    property var desserts: DessertModel { }
    property var drinks: DrinkModel { }

    GridLayout {
        anchors.fill: parent
        anchors.margins: marginValue
        rowSpacing: 10
        columnSpacing: 10
        columns: 2

        Rectangle {
            id: imageRectangle
            Layout.fillHeight: true
            Layout.fillWidth: true

            MouseArea {
                anchors.fill: parent
                onClicked: parent.color = "red"
            }
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

                onCurrentIndexChanged: {
                    if (currentIndex > -1)
                        forHereScreen.state = forHereScreen.states[currentIndex].name
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

                populate: Transition {
                    NumberAnimation {
                        property: "opacity"
                        from: 0
                        to: 1
                        duration: 1000
                    }
                }


                Component.onCompleted: model = starters
                delegate: DishDelegate {
                    height: parent.height
                    width: 100
                }
            }
        }
    }

    states: [
        State {
            name: "STARTERS"
            PropertyChanges {
                target: bottomList;
                model: starters
            }
        },
        State {
            name: "MAINS"
            PropertyChanges {
                target: bottomList;
                model: mains
            }
        },
        State {
            name: "DESSERTS"
            PropertyChanges {
                target: bottomList;
                model: desserts
            }
        },
        State {
            name: "DRINKS"
            PropertyChanges {
                target: bottomList;
                model: drinks
            }
        }
    ]
}
