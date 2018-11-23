
exports.newTextureImpl = function(image,rect){
    return function(){
        return new PIXI.Texture(image,rect);
    }
}