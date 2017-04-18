import QtQuick 2.4

TakeAwayForm {
    signal goBack()
    signal goCo()

    anchors.fill: parent
    button_goback.onClicked: goBack()
    button_goco.onClicked: goCo()
}
