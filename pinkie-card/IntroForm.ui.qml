import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: intro_form
    width: 640
    height: 480
    anchors.fill: parent
    property string cur_clock: "13:37"

    Text {
        id: title
        y: 27
        text: qsTr("The Pinkie Restaurant")
        z: 1
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        visible: true
        font.pixelSize: 12
    }

    Text {
        id: clock
        x: 557
        y: 446
        width: 0
        height: 0
        text: parent.cur_clock
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignRight
        z: 1
        font.pixelSize: 12
    }

    RowLayout {
        id: buttons_layout
        anchors.fill: parent
        spacing: 0

        Button {
            text: qsTr("For here")
            Layout.preferredWidth: parent.width / 2
            Layout.fillHeight: true
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 0
                    border.color: "#888"
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? "#ccc" : "#eee"
                        }
                        GradientStop {
                            position: 1
                            color: control.pressed ? "#aaa" : "#ccc"
                        }
                    }
                }
            }
        }

        Button {
            text: qsTr("To go")
            Layout.preferredWidth: parent.width / 2
            Layout.fillHeight: true
            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 0
                    border.color: "#888"
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: control.pressed ? "#ccc" : "#eee"
                        }
                        GradientStop {
                            position: 1
                            color: control.pressed ? "#aaa" : "#ccc"
                        }
                    }
                }
            }
        }
    }
}
