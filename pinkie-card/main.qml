import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQml 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("The Pinkie Card")

    property date cur_date: new Date()

    IntroForm {
        cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
    }

}
