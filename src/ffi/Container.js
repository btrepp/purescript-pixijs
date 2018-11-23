exports.addChildImpl = function (sprite, container){
    return function(){
        container.addChild(sprite)
        return 
    }
}