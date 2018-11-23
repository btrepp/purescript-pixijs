module Graphics.Pixi.FFI.Application 
            (Application,newApplication,_view,_stage) where

import Data.Function.Uncurried (Fn1, runFn1)
import Graphics.Pixi.FFI.Container (Container)
import Effect (Effect)
import Web.HTML (HTMLElement)

type ApplicationConfig =
    { height :: Int
    , width :: Int 
    --, antialias :: Boolean
    --, transparent :: Boolean
    --, resolution :: Int 
    }
foreign import data Application :: Type

foreign import newApplicationImpl ::Fn1 ApplicationConfig (Effect Application)
newApplication :: ApplicationConfig-> Effect Application
newApplication a= runFn1 newApplicationImpl a 

foreign import viewImpl :: Fn1 Application (Effect HTMLElement)
_view :: Application -> Effect HTMLElement
_view a = runFn1 viewImpl a

foreign import stageImpl :: Fn1 Application (Effect Container)
_stage :: Application -> Effect Container
_stage a = runFn1 stageImpl a 