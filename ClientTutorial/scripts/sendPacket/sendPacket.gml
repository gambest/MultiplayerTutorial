// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sendPacket(argument0){
	
	var _mensagem = argument0;
	
	var _buffer = buffer_create(1024, buffer_grow, 1)
	buffer_seek(_buffer, 0, 0)
	buffer_write(_buffer, buffer_text, _mensagem)
	network_send_raw(global.socket, _buffer, buffer_tell(_buffer));
}