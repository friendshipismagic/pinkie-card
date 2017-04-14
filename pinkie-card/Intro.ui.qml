import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    id: intro_form
    width: 640
    height: 480
    anchors.fill: parent
    property string cur_clock: "13:37"
    property int tile_spacing: 15
    property int text_padding: 10

    ColumnLayout {
        anchors.rightMargin: tile_spacing
        anchors.leftMargin: tile_spacing
        anchors.bottomMargin: tile_spacing
        anchors.topMargin: tile_spacing
        spacing: tile_spacing

        anchors.fill: parent

        Text {
            id: title
            text: qsTr("The Pinkie Restaurant")
            padding: text_padding
            Layout.fillWidth: true
            z: 1
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            visible: true
            font.pixelSize: 12
        }

        RowLayout {
            id: buttons_layout
            spacing: tile_spacing

            Button {
                text: qsTr("For here")
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: Button.down ? "#e67e22" : "#e67e22"
                        }
                        GradientStop {
                            position: 1
                            color: Button.down ? "#d35400" : "#d35400"
                        }
                    }
                }
            }

            Button {
                text: qsTr("To go")
                Layout.fillWidth: true
                Layout.fillHeight: true
                background: Rectangle {
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: Button.down ? "#f1c40f" : "#f1c40f"
                        }
                        GradientStop {
                            position: 1
                            color: Button.down ? "#f39c12" : "#f39c12"
                        }
                    }
                }
            }
        }

        Text {
            id: clock
            y: 446
            height: 0
            text: intro_form.cur_clock
            padding: text_padding
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            z: 1
            font.pixelSize: 12
        }

    }
}
