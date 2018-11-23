
exports.newApplicationImpl = function (arg){
    return function(){
        return new PIXI.Application(arg)
    }
}

exports.viewImpl = function (application){
    return function (){
        return application.view;
    }
}

exports.stageImpl = function (application){
    return function (){
        return application.stage;
    }
}
