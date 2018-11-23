

exports.fromImageImpl = function (url){
    return function(){
        return PIXI.BaseTexture.fromImage(url);
    }
}