import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1280
    height: 800
    title: qsTr("Weather forecast")

    StackView {//To manage navigation between pages
        id: stackView
        anchors.fill: parent
        initialItem: Item {
            Image {
                //by url to file
                source: "file:///home/krzysiek89/Desktop/QT_aplikacje/Plane_support_app_airport_visualisation/Airport_supp/background.png"
                anchors.fill: parent//fill parent(parent is ApplicationWindow(
                fillMode: Image.PreserveAspectCrop//keep aspect of size if cropped png
            }



            Button {
                id: button1
                text: "Current weather"
                x: 100    // X coordinate
                y: 100    // Y coordinate
                width: 250 // Button width
                height: 175 // Button height
                onClicked: {
                    console.log("Airport")
                    stackView.push("qrc:/qt/qml/WeatherApp/weathermain.qml") //Open page with this view
                }

                // Customize font and appearance
                contentItem: Text {
                    text: button1.text
                    font.pixelSize: 32  // Font size set to 32
                    color: "#151818" //Text color

                    //put text on the middle of button
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#95ede5"    // Background color
                    opacity: 0.6        // 60% transparency
                    border.width: 2 //2px frame around button
                    border.color: "#151818" //Frame colour
                }
            }

            Button {
                id: button2
                text: "Week prognose"
                x: 100    // X coordinate
                y: 300    // Y coordinate
                width: 250 // Button width
                height: 175 // Button height
                onClicked: {
                    console.log("Week prognose")
                    stackView.push("qrc:/qt/qml/WeatherApp/weathermain.qml") //Open page with this view
                }

                // Customize font and appearance
                contentItem: Text {
                    text: button2.text
                    font.pixelSize: 32  // Font size set to 32
                    color: "#151818" //Text color

                    //put text on the middle of button
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#95ede5"    // Background color
                    opacity: 0.6        // 60% transparency
                    border.width: 2 //2px frame around button
                    border.color: "#151818" //Frame colour
                }
            }

            Button {
                id: button3
                text: "History"
                x: 100    // X coordinate
                y: 500    // Y coordinate
                width: 250 // Button width
                height: 175 // Button height
                onClicked: {
                    console.log("History")
                    stackView.push("qrc:/qt/qml/WeatherApp/weathermain.qml") //Open page with this view
                }

                // Customize font and appearance
                contentItem: Text {
                    text: button3.text
                    font.pixelSize: 32  // Font size set to 32
                    color: "#151818" //Text color

                    //put text on the middle of button
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#95ede5"    // Background color
                    opacity: 0.6        // 60% transparency
                    border.width: 2 //2px frame around button
                    border.color: "#151818" //Frame colour
                }
            }


        }
    }
}
