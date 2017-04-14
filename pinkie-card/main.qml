import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtQml 2.2

ApplicationWindow {
    id: root
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
        onClicked: flag_popup.open()

        background: Image {
            source: "images/flags/France.svg"
        }
    }

    Popup {
        id: flag_popup
        modal: true
        focus: true
        // XXX: Should change this awful hack to get the modal centered
        x: parent.width / 2
        y: (parent.height - flag_modal.flags_height) / 2

        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        FlagModal {
            id: flag_modal
            parent_width: root.width
            flag_item_changed.onCurrentIndexChanged: {
                flag_popup.close();
                // Reset state for next popup display
                flag_item_changed.currentIndex = -1;
            }
        }
    }
}
