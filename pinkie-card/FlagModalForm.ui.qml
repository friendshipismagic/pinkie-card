import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1

Item {
    id: item1

    property int flags_width: 70
    property int flags_height: 36
    property alias usButton: usButton
    property alias japButton: japButton
    property alias frButton: frButton

    GridLayout {
        id: flags_grid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Image {
            id: select_FR
            width: flags_width
            height: flags_height
            fillMode: Image.PreserveAspectFit
            source: "images/flags/France.svg"
            sourceSize.width: flags_width
            sourceSize.height: flags_height

            MouseArea {
                id: frButton
                anchors.fill: parent
            }
        }

        Image {
            id: select_US
            width: flags_width
            height: flags_height
            fillMode: Image.PreserveAspectFit
            source: "images/flags/United_States.svg"
            sourceSize.width: flags_width
            sourceSize.height: flags_height
            MouseArea {
                id: usButton
                anchors.fill: parent
            }
        }

        Image {
            id: select_JAP
            width: flags_width
            height: flags_height
            fillMode: Image.PreserveAspectFit
            source: "images/flags/Japan.svg"
            sourceSize.width: flags_width
            sourceSize.height: flags_height

            MouseArea {
                id: japButton
                anchors.fill: parent
            }
        }
    }
}
