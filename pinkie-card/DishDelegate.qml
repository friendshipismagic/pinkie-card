import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQml 2.2


Item {
    width: 50
    clip: false
    Image {
        height: 30
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        source: "images/flags/United_States.svg"
        anchors.top: parent.top
        Layout.fillHeight: true
    }

    Text {
        text: name
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        Layout.preferredHeight: 10
    }
}
