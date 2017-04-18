import QtQuick 2.4

FinalForm {
    signal goBack()

    anchors.fill: parent

    button_back.onClicked: goBack()
}
