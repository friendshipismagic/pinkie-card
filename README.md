# pinkie-card

[![Build Status](https://drone.tuetuopay.rezel.net/api/badges/friendshipismagic/pinkie-card/status.svg)](https://drone.tuetuopay.rezel.net/friendshipismagic/pinkie-card)

Cookie chooser for 'The Pinkie Restaurant'

## Implemented features

The very essence of the project was implemented here. The UI, albeit not the
best looking one, was done. It can be interacted with, and the user path is
essentially done.

## The interface

Most of the interface is described in the report, where each concept we took
advantage of is explained.

## Code organization

### UI

The project was done using the Qt framework for portability reasons and group
members reasons (it is the only one we can all easily develop with).

The UI part of the project is present in the `pinkie-card` folder, where the
Qt sources are present. Because we used Qt Quick, there barely is any C++ code,
while most of the app was done in QML.

As for its structure, each main screen has a `.qml` file associated :

- `Intro.qml` - Home screen
- `TakeAway.qml` - Take away screen
- `ForHereScreen.qml` - For here, main expression of our concepts
- `Checkout.qml` - Order validation screen
- `Final.qml` - Thank you screen :]

### Report

To have a nice text report, easily versionable, and open source, we decided
to use LaTeX, which source can be found in `report/report.tex`. Compilation
is easily done : `pdflatex report.tex`.

## Participants

- Alexis Bauvin
- Clément Decoodt
- Ronan Desplanques
- Ming Yang

