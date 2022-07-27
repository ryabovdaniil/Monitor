import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.3
import QtQuick.Layouts 1.0
import Patient 1.0
import QtQuick.Controls.Windows 6.0
import QtCharts


Window {
	id: window
	width: 900
	height: 300
	visible: true
	color: "#e6e6e6"
	title: "Monitor"
	modality: Qt.ApplicationModal
	flags: Qt.Window

	Patient{
		id: thisPatient
	}


	Dialog {
			id: testDialog
			title: "Test dialog"
			standardButtons: Dialog.Cancel
			implicitWidth: parent.width
			implicitHeight: parent.height

		}

	Row {
		id: menu
		x: 572
		width: 328
		height: 40
		anchors.right: parent.right
		anchors.top: parent.top
		rightPadding: 2
		topPadding: 2
		spacing: 2
		anchors.topMargin: 0
		anchors.rightMargin: 0

		Rectangle {
			id: rectangle
			width: 200
			height: menu.height
			color: "#ffffff"
			
			Text {
				id: name
				text: thisPatient.name
				anchors.verticalCenter: parent.verticalCenter
				font.pixelSize: 17
				horizontalAlignment: Text.AlignLeft
				leftPadding: 6
			}
		}

		Button {
			id: x_button
			width: x_button.height
			height: menu.height
			text: qsTr("X")
			onClicked: {
						testDialog.open();
					}
		}

		Button {
			id: pouse_button
			width: menu.height
			height: menu.height
			text: qsTr("| |")
		}

		Button {
			id: cg_button
			width: menu.height
			height: menu.height
			text: qsTr("ЭКГ")
		}
	}

	Item {
		id: item1
		x: 572
		width: 328
		height: 254
		anchors.right: parent.right
		anchors.top: parent.top
		anchors.rightMargin: 0
		anchors.topMargin: 46

		Row {
			id: row1
			width: item1.width
			height: item1.height

			Column {
				id: column_left
				width: row1.width/2
				height: row1.height

				Row {
					id: hr
					width: column_left.width
					height: 25

					Text {
						id: text2
						text: qsTr("ЧСС")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: heart_rate
						color: "#04c234"
						text: thisPatient.heart_rate
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						textFormat: Text.RichText
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: pr
					width: column_left.width
					height: 25
					Text {
						id: text4
						text: qsTr("ЧП")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: pulse_rate
						color: "#04c234"
						text: thisPatient.pulse_rate
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: spo2
					width: column_left.width
					height: 25
					Text {
						id: text6
						text: qsTr("SpO2")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text7
						color: "#ffae00"
						text: thisPatient.spo2
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: syst_p
					width: column_left.width
					height: 25
					Text {
						id: text8
						text: qsTr("АДсис")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text9
						color: "#b40000"
						text: thisPatient.syst_p
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: diast_p
					width: column_left.width
					height: 25
					Text {
						id: text10
						text: qsTr("АДдиа")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text11
						color: "#b40000"
						text: thisPatient.diast_p
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: mean_p
					width: column_left.width
					height: 25
					Text {
						id: text12
						text: qsTr("АДср")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text13
						color: "#b40000"
						text: thisPatient.mean_p
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}
			}

			Column {
				id: column_right
				width: row1.width/2
				height: row1.height

				Row {
					id: t1
					width: column_left.width
					height: 25
					Text {
						id: text14
						text: qsTr("Т1")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text15
						color: "#3336c6"
						text: thisPatient.temp1
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: t2
					width: column_left.width
					height: 25
					Text {
						id: text16
						text: qsTr("Т2")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text17
						color: "#3336c6"
						text: thisPatient.temp2
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: resp_rate
					width: column_left.width
					height: 25
					Text {
						id: text18
						text: qsTr("ЧД")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text19
						color: "#00deed"
						text: thisPatient.resp_rate
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: etco2
					width: column_left.width
					height: 25
					Text {
						id: text20
						text: qsTr("EtCo2")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text21
						color: "#00deed"
						text: thisPatient.etco2
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}

				Row {
					id: fico2
					width: column_left.width
					height: 25
					Text {
						id: text22
						text: qsTr("FiCo2")
						anchors.verticalCenter: parent.verticalCenter
						anchors.left: parent.left
						anchors.bottom: parent.bottom
						font.pixelSize: 15
						anchors.bottomMargin: 16
						anchors.verticalCenterOffset: 0
						anchors.leftMargin: 6
					}

					Text {
						id: text23
						color: "#00deed"
						text: thisPatient.fico2
						anchors.verticalCenter: parent.verticalCenter
						anchors.right: parent.right
						anchors.bottom: parent.bottom
						font.pixelSize: 19
						anchors.bottomMargin: 13
						font.styleName: "Black Italic"
						anchors.rightMargin: 6
					}
				}
			}
		}
	}

	Item {
		id: item2
		width: window.width-item1.width-2
		height: window.height/2-2
		anchors.left: parent.left
		anchors.top: parent.top
		anchors.topMargin: 0
		anchors.leftMargin: 0

		ChartView {
			property int timer1: 0
			anchors.fill: parent
			anchors.bottomMargin: -1
			anchors.leftMargin: 1
			anchors.topMargin: 1
			anchors.rightMargin: -1
			backgroundColor: "#000000"
			plotAreaColor: "#000000"
			animationOptions: ChartView.SeriesAnimations
			legend.visible:false
			plotArea: Qt.rect(0,0,item2.width,item2.height)


			ValueAxis {
				id: myAxisX
				min: 0
				max: 100

			}
			ValueAxis{
				id:myAxisY
				min:55
				max:85

			}

			SplineSeries {
				id:splineSeries
				name: "LineSeries"
				axisX: myAxisX
				axisY:myAxisY
				color: "#04c234"
				width: 2
			}

			Timer{
				property int timer: 0
				property int amountOfData: 0
				interval: 500
				running: true
				repeat: true
				onTriggered: {
					splineSeries.append(timer,thisPatient.heart_rate)
					if(amountOfData > myAxisX.max*0.9){
						myAxisX.min+=10
						myAxisX.max+=10
					}else{
						amountOfData++ //This else is just to stop incrementing the variable unnecessarily
					}
					timer++
					}
				}
			}
		}



	Item {
		id: item3
		width: window.width-item1.width-2
		height: window.height/2-2
		anchors.left: parent.left
		anchors.top: parent.top
		anchors.topMargin: 150
		anchors.leftMargin: 0

		ChartView {
			anchors.fill: parent
			anchors.bottomMargin: -1
			anchors.leftMargin: 1
			anchors.topMargin: 1
			anchors.rightMargin: -1
			backgroundColor: "#000000"
			plotAreaColor: "#000000"
			animationOptions: ChartView.SeriesAnimations
			legend.visible:false
			plotArea: Qt.rect(0,0,item3.width,item3.height)


			ValueAxis {
				id: myAxisX2
				min: 0
				max: 100

			}
			ValueAxis{
				id:myAxisY2
				min:85
				max:105

			}

			SplineSeries {
				id:splineSeries2
				name: "LineSeries"
				axisX: myAxisX2
				axisY:myAxisY2
				color: "#ffae00"
				width: 2
			}

			Timer{
				property int timer: 0
				property int amountOfData: 0
				interval: 500
				running: true
				repeat: true
				onTriggered: {
					splineSeries2.append(timer,thisPatient.spo2)
					if(amountOfData > myAxisX2.max*0.9){
						myAxisX2.min+=10
						myAxisX2.max+=10
					}else{
						amountOfData++ //This else is just to stop incrementing the variable unnecessarily
					}
//					if(timer > 100){
//						splineSeries2.remove(0);
//					}
					timer++
				}
			}
		}
	}
}

/*##^##
Designer {
	D{i:0;formeditorZoom:1.1}
}
##^##*/
