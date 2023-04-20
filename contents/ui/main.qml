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


    // todo - blur the wallpaper (if done I enable the condition below)
    // todo - detect if a window is active - in the current desktop
      // todo - detect desktop change
      // todo - detect activity change
    // todo - maybe detect wallpaper source change ?

    // todo - set a value to debugUrl when a wallpaper is detected for a better understanding
    // todo - add a img visualiseur with the same wallpaper and same blur effect for a better ux
       // todo - what about the slideshow in this case...

}
