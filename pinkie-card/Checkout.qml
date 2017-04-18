import QtQuick 2.4

CheckoutForm {
    signal goBack()
    signal goEnd()

    anchors.fill: parent

    button_back.onClicked: goBack()
    button_end.onClicked: goEnd()
}
