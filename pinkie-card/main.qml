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
    property string cur_lang: 'images/flags/United_States.svg'

    StackView {
        id: main_page_stackview
        initialItem: intro
        anchors.fill: parent

        IntroForm {
            id: intro
            cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
            button_togo.onClicked: main_page_stackview.push(Qt.resolvedUrl('TakeAway.qml'))
        }

    }

    Button {
        id: lang_select
        x: 477
        width: 70
        height: 36
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 30
        z: 1
        onClicked: flag_popup.open()

        background: Image {
            source: cur_lang
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
