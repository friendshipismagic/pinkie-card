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
              opacity: enabled ? 1 : 0.3
              color: control.hovered ? 'grey' : 'transparent'
              radius: 8
          }

    onClicked: ListView.view.currentIndex = index
}
