import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1

Popup {
    id: flags_modal
    x: 100
    y: 100
    modal: true
    focus: true

    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
    property int flags_width: 70
    property int flags_height: 36

    ColumnLayout {
        anchors.fill: parent
        Text {
            text: "Select your language"
        }

        GridLayout {
            id: flags_grid

            Image {
                id: select_FR
                width: flags_width
                height: flags_height
                fillMode: Image.PreserveAspectFit
                source: "images/flags/France.svg"
                sourceSize.width: flags_width
                sourceSize.height: flags_height
                MouseArea {
                    anchors.fill: parent
                    onClicked: flag_modal.close()
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
                    anchors.fill: parent
                    onClicked: flag_modal.close()
                }
            }
        }
    }
}
