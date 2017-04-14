import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1

Item {
    property int flags_width: 70
    property int flags_height: 36
    property alias flag_item_changed: flags_grid

    GridView {
        id: flags_grid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        currentIndex: -1

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
                onClicked: flags_grid.currentIndex = index
            }
        }
    }
}
