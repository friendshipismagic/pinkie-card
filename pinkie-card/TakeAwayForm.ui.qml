import QtQuick 2.7
import QtQuick.Controls 2.1

Item {
    width: 640
    height: 480

    Flickable {
        id: chooser_flickable
        clip: true
        Keys.onUpPressed: chooser_scroller.decrease()
        Keys.onDownPressed: chooser_scroller.increase()

        ScrollBar.vertical: ScrollBar {
            id: chooser_scroller
            parent: chooser_flickable.parent
            anchors.top: chooser_flickable.top
            anchors.bottom: chooser_flickable.bottom
            anchors.left: chooser_flickable.left
        }
    }

}
