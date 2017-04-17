import QtQuick 2.4
import QtQuick.Layouts 1.1
import "models"

Rectangle {
    id: forHereScreen
    anchors.fill: parent
    color: '#34495e'


    property int marginValue: 10

//    property alias dishDelegate: bottomPane.delegate
//    property alias categoryDelegate: rightPane.delegate

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


        Rectangle {
            Layout.preferredWidth: 100
            Layout.fillHeight: true
            color: "blue"
        }

        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "red"
            ListView {
                anchors.fill: parent
                orientation: Qt.Horizontal
                model: DishesModel { }
                delegate: DishDelegate {
                    height: parent.height
                }
            }
        }
    }
}
