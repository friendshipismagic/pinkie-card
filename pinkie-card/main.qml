import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQml 2.2

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("The Pinkie Card")

    property date cur_date: new Date()
    property string cur_lang: 'images/flags/France.svg'

    StackView {
        id: main_page_stackview
        initialItem: intro
        anchors.fill: parent

        IntroForm {
            id: intro
            cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
            button_togo.onClicked: main_page_stackview.push(take_away_component)
            button_here.onClicked: main_page_stackview.push(for_here_component)
        }

        Component {
            id: take_away_component

            TakeAway {
                onGoBack: main_page_stackview.pop()
                onGoCo: main_page_stackview.push(checkout_component)
            }
        }

        Component {
            id: for_here_component

            ForHereScreen {
                onGoBack: main_page_stackview.pop()
                onGoCo: main_page_stackview.push(checkout_component)
            }
        }

        Component {
            id: checkout_component

            Checkout {
                onGoBack: main_page_stackview.pop()
                onGoEnd: main_page_stackview.push(final_component)
            }
        }

        Component {
            id: final_component

            Final {
                onGoBack: main_page_stackview.pop()
            }
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

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#222222"
        z: -2
    }
}
