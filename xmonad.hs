import XMonad
import XMonad.Util.EZConfig(additionalKeysP)
import Graphics.X11.ExtraTypes.XF86

main :: IO ()
main = xmonad $ def
    { terminal    = myTerminal
    , modMask     = myModMask
    , borderWidth = myBorderWidth
    }
  `additionalKeysP`
     [ ("M-p"                         , spawn "rofi -show drun"           )
     , ((0, xF86XK_AudioLowerVolume  ), spawn "amixer set PCM 10%-"       )
     , ((0, xF86XK_AudioRaiseVolume  ), spawn "amixer set PCM 10%+"       )
     , ((0, xF86XK_AudioMute         ), spawn "amixer set IEC958,3 toggle")
     ]

myTerminal    = "alacritty"
myModMask     = mod4Mask
myBorderWidth = 3
