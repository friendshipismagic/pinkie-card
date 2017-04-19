import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

ItemDelegate {
    id:control
    text: name
    hoverEnabled: true


    contentItem: ColumnLayout {
        anchors.fill: parent
        Image {
            Layout.fillWidth: true
            Layout.fillHeight: true
            source: imageSource
            fillMode: Image.Stretch
            Layout.margins: 5
        }

        Text {
            rightPadding: control.spacing
            text: control.text
            fontSizeMode: Text.Fit
            font: control.font
            color: "#d9000000"
            elide: Text.ElideRight
            visible: control.text
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.fillWidth: true
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        color: control.hovered ? '#f7d2df' : '#f8b9ce'
        radius: 8
    }
}
