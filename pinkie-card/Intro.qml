import QtQuick 2.7

Item {
    property date cur_date: new Date()

    IntroForm {
        anchors.fill: parent
        cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
    }

}
