import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as Plasma
import org.kde.kwin 2.0

Item {
    id: root

    readonly property var blurRadius: (
        KWin.readConfig("blurRadius", 40)
    )

    readonly property var animationDelay: (
        KWin.readConfig("animationDelay", 400)
    )

}
