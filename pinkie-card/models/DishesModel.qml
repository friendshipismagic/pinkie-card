import QtQuick 2.0

Item {
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

}
