import QtQuick 2.7
import QtQuick.Controls.Material 2.0

Item {
    id: intro_form
    width: 640
    height: 480
    anchors.fill: parent

    Text {
        id: title
        x: 254
        y: 27
        text: qsTr("The Pinkie Restaurant")
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        visible: true
        font.pixelSize: 12
    }
}
