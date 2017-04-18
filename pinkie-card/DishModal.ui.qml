import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import "models"

Item {
    id: dish_modal
    property string dish_background: "images/dishes/dish_base.jpg"
    property string dish_name: "My awesome dish"
    property int dish_text_margin: 20
    property int dish_text_max_size: 40

    Text {
        id: title
        text: qsTr(dish_name)
        fontSizeMode: Text.Fit
        font.pointSize: dish_text_max_size
        anchors.top: parent.top
        anchors.topMargin: dish_text_margin
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: background
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: dish_background
        z: -1
    }
}
