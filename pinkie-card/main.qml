import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQml 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("The Pinkie Card")

    ForHereScreen {
        visible: true
        anchors.fill: parent
        bottomList.model: startersList
        bottomList.delegate: Text {
            text: name;
            anchors.margins: 5
        }
    }

    ListModel {
        id: startersList
        ListElement {
            name: "Salade"
        }
        ListElement {
            name: "Carottes"
        }
        ListElement {
            name: "Céleri Rémoulade"
        }
    }

//    Component {
//        id: dishDelegate

//    }

    property date cur_date: new Date()

    IntroForm {
        visible: false
        cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
    }

}
