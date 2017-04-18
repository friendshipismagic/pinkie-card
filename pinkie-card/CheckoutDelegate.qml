import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import 'models/'

ItemDelegate {

    id:control
    text: name
    hoverEnabled: true
    contentItem: RowLayout {
        id: list_layout
        anchors.left: parent.left
        anchors.right: parent.right

        Text {
            id: text_description
            text: qsTr(name)
            anchors.left: parent.left
            anchors.leftMargin: 50
        }

        Text {
            id: text_price
            text: qsTr(price)
            anchors.right: parent.right
            anchors.rightMargin: 50
        }
    }
    background: Rectangle {
        id: elt_background
        color: 'grey'
        anchors.fill: list_layout
    }

}
