exports.newRectangleImpl = function (x,y,width,height){
    return function (){
        return new PIXI.Rectangle(x,y,width,height);
    }
}