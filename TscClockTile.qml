import QtQuick 2.1
//import qb.base 1.0
import qb.components 1.0

Tile {
	id: tscClockTile

	onClicked: {
		if (app.tscClockSettings)
			app.tscClockSettings.show();
	}

	Text {
		id: txtTimeBig
		text: app.timeStr
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor: colors.clockTileColor
		anchors {
			baseline: parent.top
			baselineOffset: isNxt ? 70 : 55
			left: parent.left
			leftMargin: app.leftMarginTime
		}
		font.pixelSize: isNxt ? 65 : 50
		font.family: qfont.regular.name
	}

	Text {
		id: txtSeconds
		text: app.timeSeconds
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor: colors.clockTileColor
		anchors {
			bottom: txtTimeBig.bottom
			bottomMargin: isNxt ? 11 : 9
			left: txtTimeBig.right
			leftMargin: isNxt ? 5 : 4
		}
		font.pixelSize: isNxt ? 30 : 24
		font.family: qfont.regular.name
		visible: app.showSeconds
	}

	Text {
		id: txtDate
		text: app.dateStr
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor: colors.clockTileColor
		anchors {
			baseline: parent.top
			baselineOffset: isNxt ? 120 : 95
			horizontalCenter: parent.horizontalCenter
		}
		horizontalAlignment: Text.AlignHCenter
		font.pixelSize: isNxt ? 32 : 25
		font.family: qfont.regular.name
		visible: app.showDate
	}
}
