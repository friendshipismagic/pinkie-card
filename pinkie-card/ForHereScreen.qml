import QtQuick 2.4
import QtQuick.Layouts 1.1
import "models"

Rectangle {
    id: forHereScreen
    anchors.fill: parent
    color: '#34495e'


    property int marginValue: 10

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
        }


        Item {
            Layout.preferredWidth: 100
            Layout.alignment: Qt.AlignCenter
            Layout.preferredHeight: rightList.contentHeight

            ListView {
                id: rightList
                anchors.fill: parent
                orientation: Qt.Vertical
                spacing: 5
                model: MenuModel {

                }
                delegate: DishDelegate {
                    width: parent.width
                    height: 100
                }
            }
        }

        Item {
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: bottomList.contentWidth
            ListView {
                id: bottomList
                anchors.fill: parent
                orientation: Qt.Horizontal
                spacing: 5
                model: StarterModel {

                }
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
                model: StarterModel { }
            }
        },
        State {
                name: "MAINS"
                PropertyChanges {
                    target: bottomList;
                    model: MainCourseModel { }
                }
            },
        State {
                name: "DESSERTS"
                PropertyChanges {
                    target: bottomList;
                    model: DessertModel { }
                }
            },
        State {
                name: "DRINKS"
                PropertyChanges {
                    target: bottomList;
                    model: DrinkModel { }
                }
            }
    ]
}
