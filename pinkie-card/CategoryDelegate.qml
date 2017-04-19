import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

ItemDelegate {
    id:control
    text: name
    //Uncomment to switch hovering on.
    //hoverEnabled: true

    contentItem: Text {
        rightPadding: control.spacing
        text: control.text
        font: control.font
        color: control.enabled ? (control.down ? "#17a81a" : "#21be2b") : "#bdbebf"
        visible: control.text
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        opacity: control.hovered ? 0.3 : 0
        color: '#fff'
        radius: 8
    }

    onClicked: ListView.view.currentIndex = index
}
