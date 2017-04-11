import QtQuick 2.7
import QtQuick.Layouts 1.3

Item {
    id: intro_form
    width: 640
    height: 480
    anchors.fill: parent

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

    RowLayout {
        id: buttons_layout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            color: 'teal'
            Layout.preferredWidth: parent.width/2
            Layout.fillHeight: true
        }

        Rectangle {
            color: 'plum'
            Layout.preferredWidth: parent.width/2
            Layout.fillHeight: true
        }
    }
}
