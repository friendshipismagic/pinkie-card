import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQml 2.2

Image {
    property int delegateWidth: 50
    id: image1
    width: delegateWidth
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.bottomMargin: caption.height
    fillMode: Image.PreserveAspectFit
    source: "qrc:/images/flags/United_States.svg"

    Text {
        id: caption
        text: name
        width: delegateWidth
        anchors.top: parent.bottom
        elide: Text.ElideMiddle
    }
}
