import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

ItemDelegate {
    id:control
    text: name

    onClicked: ListView.view.currentIndex = index
}
