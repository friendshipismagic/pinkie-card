import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

ItemDelegate {
    id:control
    text: name
    onPressed: {
        console.log("hello");
    }

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
                  color: control.enabled ? (control.down ? "#17a81a" : "#21be2b") : "#bdbebf"
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
              color: control.down ? "#dddedf" : "#eeeeee"

              Rectangle {
                  width: parent.width
                  height: 1
                  color: control.down ? "#17a81a" : "#21be2b"
                  anchors.bottom: parent.bottom
              }
          }
}
