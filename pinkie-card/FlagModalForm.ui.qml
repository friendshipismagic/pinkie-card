import QtQuick 2.7
import QtQuick.Controls 2.1

Popup {
    x: 100
    y: 100
    width: 200
    height: 300
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
}
