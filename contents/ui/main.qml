import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as Plasma
import org.kde.kwin 2.0
import QtGraphicalEffects 1.15 // for FastBlur

Item {
    id: root

    readonly property var blurRadius: (KWin.readConfig("blurRadius", 40))

    readonly property var animationDelay: (KWin.readConfig("animationDelay", 400))

    readonly property var debugUrl: (KWin.readConfig("debugUrl", "Nothing to show"))

    // when the user active the script
    Component.onCompleted: {
        console.log("ACTIVE-BLUR: starting")
        console.log("ACTIVE-BLUR: data value", blurRadius, animationDelay, debugUrl)
    }

    // when user disables the script
    Component.onDestruction: {
        console.log("ACTIVE-BLUR: shutdown")
    }

}
