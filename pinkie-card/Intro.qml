import QtQuick 2.7

Item {
    id: intro
    property date cur_date: new Date()
    signal message(string msg)

    IntroForm {
        anchors.fill: parent
        cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
        // XXX: Is there a better way?
        button_here.onClicked: intro.message("ForHere.qml") // TODO: For future change
        button_togo.onClicked: intro.message("TakeAway.qml")
    }

}
