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
        bottomList.delegate: DishDelegate {
        }
        bottomList.spacing: 10
    }

    ListModel {
        id: startersList
        ListElement {
            name: "Salade"
            imageSource: "images/dishes/salade.jpg"
        }
        ListElement {
            name: "Carottes"
            imageSource: "images/dishes/carottes.jpg"
        }
        ListElement {
            name: "Céleri Rémoulade"
            imageSource: "images/dishes/celeri_remoulade.jpg"
        }
    }


    property date cur_date: new Date()

    IntroForm {
        visible: false
        cur_clock: cur_date.toLocaleDateString() + ", " + cur_date.toLocaleTimeString(Locale.ShortFormat)
    }

}
