import QtQuick 2.7

Item {
    id: basic_tile
    width: 200
    height: 200
    property string menu_text: qsTr("My Awesome Dish")

    Text {
        id: dish_text
        text: menu_text
        font.pointSize: 15
        z: 1
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: background_tile
        anchors.fill: parent
        color: 'blue'
        z: 0
    }
}
