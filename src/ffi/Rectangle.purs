module Graphics.PIXI.FFI.Rectangle 
    (Rectangle, newRectangle) where
import Data.Function.Uncurried(Fn4,runFn4)
import Effect (Effect)

type RectangleConfig = 
    { x :: Number
    , y :: Number
    , width :: Number
    , height :: Number }
foreign import data Rectangle :: Type
foreign import newRectangleImpl :: Fn4 Number Number Number Number 
                                                (Effect Rectangle)
newRectangle :: RectangleConfig -> Effect (Rectangle)
newRectangle arg = 
    runFn4 newRectangleImpl arg.x arg.y arg.width arg.height