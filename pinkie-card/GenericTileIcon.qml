import QtQuick 2.7
import QtGraphicalEffects 1.0

Item {
    id: generic_tile
    // Tile related
    property int tile_shadow_size: 10
    // Text related
    property int tile_text_spacing: 20
    property string tile_text: 'Tile'
    property int tile_text_max_size: 72
    property bool tile_text_center: false
    // Icon related
    property string tile_icon_svg: 'images/intro/noodles.svg'
    property int tile_icon_spacing: 100
    property bool tile_icon_fullscreen: false
    // Colors related
    property color tile_color: 'grey'
    property color tile_color_hovered: 'grey'
    property color tile_color_pressed: 'black'

    scale: state === "Pressed" ? 0.96 : 1.0
    onEnabledChanged: state = ""
    signal clicked

    //define a scale animation
    Behavior on scale {
        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }

    states: [
        State {
            name: "Hovering"
            PropertyChanges {
                target: background
                color: tile_color_hovered
            }
        },
        State {
            name: "Pressed"
            PropertyChanges {
                target: background
                color: tile_color_pressed
            }
        }
    ]

    //define transitions for the states
    transitions: [
        Transition {
            from: ""; to: "Hovering"
            ColorAnimation { duration: 200 }
        },
        Transition {
            from: "*"; to: "Pressed"
            ColorAnimation { duration: 2 }
        }
    ]

    //Mouse area to react on click events
    MouseArea {
        hoverEnabled: true
        z: 3
        anchors.fill: background
        onEntered: { generic_tile.state='Hovering' }
        onExited: { generic_tile.state='' }
        onClicked: { generic_tile.clicked() }
        onPressed: { generic_tile.state="Pressed" }
        onReleased: {
            if (containsMouse)
              generic_tile.state="Hovering";
            else
              generic_tile.state="";
        }
    }

    Text {
        id: main_text
        color: "#d9000000"
        text: qsTr(tile_text)
        anchors.bottom: tile_icon_fullscreen ? parent.bottom : icon.top
        anchors.bottomMargin: 0
        fontSizeMode: Text.Fit
        clip: true
        font.weight: Font.Medium
        font.capitalization: Font.AllUppercase
        font.pixelSize: tile_text_max_size
        verticalAlignment: tile_text_center ? Text.AlignVCenter : Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.topMargin: tile_text_spacing
        anchors.leftMargin: tile_text_spacing
        anchors.rightMargin: tile_text_spacing
        z: 2
    }

    Image {
        id: icon
        antialiasing: true
        anchors.left: background.left
        anchors.bottom: background.bottom
        anchors.leftMargin: tile_icon_fullscreen ? 0 : tile_icon_spacing
        anchors.bottomMargin: tile_icon_fullscreen ? 0 : tile_icon_spacing
        fillMode: tile_icon_fullscreen ? Image.PreserveAspectCrop : Image.PreserveAspectFit
        anchors.verticalCenter: background.verticalCenter
        anchors.horizontalCenter: background.horizontalCenter
        z: 1
        source: tile_icon_svg
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: tile_color
        anchors.margins: tile_shadow_size
        z: 0
    }

    DropShadow {
        id: tile_shadow
        anchors.fill: background
        horizontalOffset: 5
        radius: 8
        verticalOffset: horizontalOffset
        samples: 17
        color: "#80000000"
        source: background
    }
}
