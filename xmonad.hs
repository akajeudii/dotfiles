import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import Graphics.X11.ExtraTypes.XF86

main = do
  xmonad $ def
    { terminal    = myTerminal
    , modMask     = myModMask
    , borderWidth = myBorderWidth
    } `additionalKeys`
       [ ((0, xF86XK_AudioLowerVolume  ), spawn "amixer set PCM 10%-")
       , ((0, xF86XK_AudioRaiseVolume  ), spawn "amixer set PCM 10%+")
       , ((0, xF86XK_AudioMute         ), spawn "amixer set IEC958,3 toggle")
       ]

myTerminal    = "alacritty"
myModMask     = mod4Mask
myBorderWidth = 3
