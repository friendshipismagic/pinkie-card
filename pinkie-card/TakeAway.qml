import QtQuick 2.4

TakeAwayForm {
    signal goBack()

    anchors.fill: parent
    button_goback.onClicked: goBack()
}
