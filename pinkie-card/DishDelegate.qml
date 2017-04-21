import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

ItemDelegate {
    id:control
    text: name
    hoverEnabled: true

    contentItem: MouseArea {
        id: mouse_area
        drag.target: contents
        anchors.fill: parent

        Rectangle {
            id: contents

            color: control.hovered ? '#f7d2df' : '#f8b9ce'
            radius: 8

            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: parent.height

            Drag.active: mouse_area.drag.active
            Drag.hotSpot.x: 0
            Drag.hotSpot.y: 0

            states: State {
                when: mouse_area.drag.active
                ParentChange { target: contents; parent: control }
                AnchorChanges {
                    target: contents
                    anchors.verticalCenter: undefined
                    anchors.horizontalCenter: undefined
                }
            }

            ColumnLayout {
                anchors.fill: parent

                Image {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    source: imageSource
                    fillMode: Image.Stretch
                    Layout.margins: 5
                }

                Text {
                    rightPadding: control.spacing
                    text: control.text
                    fontSizeMode: Text.Fit
                    font: control.font
                    color: "#d9000000"
                    elide: Text.ElideRight
                    visible: control.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: true
                }
            }
        }
    }
}
