import QtQuick 2.7

Item {
    id: basic_tile
    width: 200
    height: 200
    property string menu_text: qsTr("My Awesome Dish")
    property string menu_thumbnail: 'images/dishes/dish_base.jpg'
    property color  menu_primary_color: 'grey'

    Text {
        id: dish_text
        text: menu_text
        font.pointSize: 9
        z: 2
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: transparent_text_back
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        height: dish_text.height * 1.5
        opacity: 0.7
        color: menu_primary_color
        anchors.topMargin: -height/2
        anchors.top: dish_text.verticalCenter
        z: 1
    }

    Image {
        id: background_tile
        fillMode: Image.PreserveAspectCrop
        source: menu_thumbnail
        anchors.fill: parent
        z: 0
    }
}
