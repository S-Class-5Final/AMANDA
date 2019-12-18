var mongoose = require('mongoose');

// mongoDB에 저장할 형식 ( vo 클래스와 비슷하다. )
var chatSchema;
var chatRoom = function(connName){
	chatSchema = new mongoose.Schema({
		cId : {type : Number, default:0, index:true},
		userName : String,
		chatContent : String,
		showContent : { type: Number, default : 0},
		createDate : { type: Date, default : Date.now},
		status : { type: String, default : 'Y'}
	},{
		collection : connName,
		versionKey : false
	});
	
	return module.exports = mongoose.model(connName, chatSchema);
}

module.exports = chatRoom;

