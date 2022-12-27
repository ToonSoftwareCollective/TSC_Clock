import QtQuick 2.1
import qb.components 1.0
import BxtClient 1.0

Screen {
	id: tscClockSettingsScreen


	screenTitle: "TSC Klok configuratie"

	onShown: {
		addCustomTopRightButton("Opslaan");
		showDateToggle.isSwitchedOn = app.showDate;
		showSecondsToggle.isSwitchedOn = app.showSeconds;
		showMonthInTextToggle.isSwitchedOn = app.showMonthInText;
		showDayOfWeekToggle.isSwitchedOn = app.showDayOfWeek;
	}

	onCustomButtonClicked: {
		app.saveSettings();
		app.updateClockTiles();
		hide();
	}


	Text {
		id: showDateText
		x: isNxt ? 36 : 30
		y: isNxt ? 60 : 50
		width: isNxt ? 500 : 400
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.semiBold.name
		text: "Toon datum"
	}

	OnOffToggle {
		id: showDateToggle
		height: isNxt ? 45 : 36
		anchors.left: showDateText.right
		anchors.leftMargin: isNxt ? 25 : 20
		anchors.top: showDateText.top
		leftIsSwitchedOn: false
		onSelectedChangedByUser: {
			if (isSwitchedOn) {
				app.showDate = true;
			} else {
				app.showDate = false;
			}
		}
	}


	Text {
		id: showSecondsText
		anchors {
			top: showDateText.bottom
			topMargin: isNxt ? 25 : 20
			left: showDateText.left
		}
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.semiBold.name
		text: "Toon seconden in de tijd"
	}

	OnOffToggle {
		id: showSecondsToggle
		height: isNxt ? 45 : 36
		anchors.left: showDateToggle.left
		anchors.top: showSecondsText.top
		leftIsSwitchedOn: false
		onSelectedChangedByUser: {
			if (isSwitchedOn) {
				app.showSeconds = true
			} else {
				app.showSeconds = false
			}
		}
	}

	Text {
		id: showMonthInTextText
		anchors {
			top: showSecondsText.bottom
			topMargin: isNxt ? 25 : 20
			left: showSecondsText.left
		}
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.semiBold.name
		text: "Maand in datum voluit geschreven"
	}

	OnOffToggle {
		id: showMonthInTextToggle
		height: isNxt ? 45 : 36
		anchors.left: showSecondsToggle.left
		anchors.top: showMonthInTextText.top
		leftIsSwitchedOn: false
		onSelectedChangedByUser: {
			if (isSwitchedOn) {
				app.showMonthInText = true;
			} else {
				app.showMonthInText = false;
			}
		}
	}

	Text {
		id: showDayOfWeekText
		anchors {
			top: showMonthInTextText.bottom
			topMargin: isNxt ? 25 : 20
			left: showSecondsText.left
		}
		font.pixelSize: isNxt ? 20 : 16
		font.family: qfont.semiBold.name
		text: "Toon dag van de week"
	}

	OnOffToggle {
		id: showDayOfWeekToggle
		height: isNxt ? 45 : 36
		anchors.left: showSecondsToggle.left
		anchors.top: showDayOfWeekText.top
		leftIsSwitchedOn: false
		onSelectedChangedByUser: {
			if (isSwitchedOn) {
				app.showDayOfWeek = true;
			} else {
				app.showDayOfWeek = false;
			}
		}
	}
}
