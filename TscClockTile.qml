import QtQuick 2.1
//import qb.base 1.0
import qb.components 1.0

Tile {
	id: joopTile
//	tileSize: tilesize_2X1

	/// Will be called when widget instantiated
	function init() {}

	onClicked: {
		stage.openFullscreen(app.fullScreenUrl);
	}

	Text {
		id: txtTimeBig
		text: app.timeStr
		color: (typeof dimmableColors !== 'undefined') ? dimmableColors.clockTileColor: colors.clockTileColor
		anchors {
			baseline: parent.top
			baselineOffset: isNxt ? 70 : 55
			horizontalCenter: parent.horizontalCenter
		}
		font.pixelSize: isNxt ? 65 : 50
		font.family: qfont.regular.name
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
	}
}
