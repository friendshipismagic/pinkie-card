import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.0
import QtQml 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("The Pinkie Card")

    property date cur_date: new Date()

    IntroForm {
        cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
    }

    Button {
        id: lang_select
        x: 477
        width: 70
        height: 36
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
        z: 1
        onClicked: flag_modal.open()
        style: ButtonStyle {
            background: Image {
                fillMode: Image.PreserveAspectFit
                source: "images/flags/United_States.svg"
            }
        }
    }

    FlagModal {
        id: flag_modal
        // XXX: Should change this awful hack to get the modal centered
        x: (parent.width - width)/2
        y: (parent.height - height)/2
    }

}
