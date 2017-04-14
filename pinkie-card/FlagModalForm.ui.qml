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

    GridView {
        id: flags_grid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        model: LanguageModel {}
        delegate: Image {
            source: flag_rsc
            width: flags_width
            height: flags_height
            fillMode: Image.PreserveAspectFit
            sourceSize.width: flags_width
            sourceSize.height: flags_height

            MouseArea {
                anchors.fill: parent
            }
        }
    }
}
