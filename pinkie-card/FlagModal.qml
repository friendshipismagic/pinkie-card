import QtQuick 2.7

FlagModalForm {
    frButton.onClicked: { console.log(qsTr("Switched to French")); }
    usButton.onClicked: { console.log(qsTr("Switched to English")); }
    japButton.onClicked: { console.log(qsTr("Switched to Japanese")); }
}
