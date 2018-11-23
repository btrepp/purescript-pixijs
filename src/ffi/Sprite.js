exports.newSpriteImpl = function (texture){
    return function (){
        return new PIXI.Sprite(texture);
    }
}

exports.setPositionXImpl = function (sprite,x){
    return function (){
        sprite.position.x = x
    }
}

exports.setPositionYImpl = function (sprite,y){
    return function(){
        sprite.position.y = y
    }
}