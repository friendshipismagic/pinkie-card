import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

ItemDelegate {
    id:control
    text: name
    //Uncomment to switch hovering on.
    //hoverEnabled: true

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        opacity: control.hovered ? 0.3 : 0
        color: '#fff'
        radius: 8
    }

    onClicked: ListView.view.currentIndex = index
}
