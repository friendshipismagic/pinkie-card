import QtQuick 2.4
import QtQuick.Layouts 1.1
import "models"

Item {
    id: forHereScreen
    anchors.fill: parent

    property int marginValue

    property alias dishDelegate: bottomPane.delegate
    property alias categoryDelegate: rightPane.delegate

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

        ListView {
            id: rightPane
            model: DishesModel { }
            Layout.preferredWidth: 100
            Layout.fillHeight:true
        }

        ListView {
            id: bottomPane
            model: DishesModel { }
            Layout.preferredHeight: 100
            Layout.fillWidth: true
        }
    }
}
