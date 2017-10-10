/**
 * Created by Haitao Ji on 10/9/2017.
 */
jc.data.setup(function (data) {
    var html = '';
    if(!data || !data.length){
        return html;
    }
    html += '<table width="450" border="0" cellpadding="0" cellspacing="0">';
    html += '\n';
    html += '<tr><td>';
    html += '\n';
    html += '<div id="www_qpsh_com" style="overflow:hidden;height:165px;width:620px;color:#ff0000; font-size:12px; padding-left:5px; margin-top:8px; margin-left:2px; font-weight:normal "><table align="left" cellpadding="0" cellspace="0" border="0"><tr><td id="www_qpsh_com1" valign="top">';
    html += '\n';
    html += '<table border="0" cellpadding="0" cellspacing="0" style="font-size:12px;">';
    html += '\n';
    html += '<tr>';
    html += '\n';
    for (var i = 0, l = data.length; i < l; i++) {

        var curData = data[i];
        var dataRootColumnId = curData.rootColumnInfo.id;
        var columnListId = curData.columnInfo.id;
        var articleId = curData.id;
        var coverImageUrl = curData.coverImageUrl;
        var dataTitle = curData.title;
        html += '<td>';
        html += '\n';
        html += '<a href="javascript:;" target="_blank" onclick="window.parent.window.router(\'menuAndDetail\',{ rootColumnId:\'' + dataRootColumnId + '\',columnListId:\'' + columnListId + '\',articleId:\'' + articleId + '\' });">';
        html += '\n';
        html += '<img border=0  width=150 height=100 hspace=12 style="margin-bottom:5px; margin-left:5px; margin-right:5px;" src="' + (coverImageUrl ? window.serverUploadPath + coverImageUrl : window.notImgUrl) + '">';
        html += '\n';
        html += '</a><br><center>'+dataTitle+'</center>';
        html += '\n';
        html += '</td>';
        html += '\n';
    }
    html += '</tr>';
    html += '\n';
    html += '</table>';
    html += '\n';
    html += '</td><td id=www_qpsh_com2 valign=top></td></tr></table></div>';
    html += '\n';
    html += '<script>';
    html += '\n';
    html += '$(function(){';
    html += '\n';
    html += 'var speed=20;';
    html += '\n';
    html += '$("#www_qpsh_com2").html($("#www_qpsh_com1").html());';
    html += '\n';
    html += 'function Marquee(){';
    html += '\n';
    html += 'var sl = $("#www_qpsh_com").scrollLeft();';
    html += '\n';
    html += 'if($("#www_qpsh_com2").outerWidth(false)-$("#www_qpsh_com").scrollLeft()<=0){';
    html += '\n';
    html += '$("#www_qpsh_com").scrollLeft(sl - $("#www_qpsh_com1").outerWidth(false));';
    html += '\n';
    html += '}else{';
    html += '\n';
    html += '$("#www_qpsh_com").scrollLeft(sl + 1);';
    html += '\n';
    html += '}';
    html += '\n';
    html += '}';
    html += '\n';
    html += 'var MyMar=setInterval(Marquee,speed);';
    html += '\n';
    html += '$("#www_qpsh_com").mouseover(function() {clearInterval(MyMar);});';
    html += '\n';
    html += '$("#www_qpsh_com").mouseout(function() {MyMar=setInterval(Marquee,speed);});';
    html += '\n';
    html += '});';
    html += '\n';
    html += '</script>';
    html += '\n';
    html += '</td></tr></table>';
    return html;

});