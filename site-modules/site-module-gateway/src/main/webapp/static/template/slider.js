/**
 * Created by Haitao Ji on 10/4/2017.
 */
jc.data.setup(function (data) {
    var html = '';
    if(!data || !data.length){
        return html;
    }
    html += '<div class="scrolllist" id="s1">';
    html += '\n';
    html += '<a class="abtn aleft" href="#left" title="左移"></a>';
    html += '\n';
    html += '<div class="imglist_w" id="slideItems">';
    html += '\n';
    html += '<ul>';
    html += '\n';
    for (var i = 0, l = data.length; i < l; i++) {

        var curData = data[i];
        var dataRootColumnId = curData.rootColumnInfo.id;
        var columnListId = curData.columnInfo.id;
        var articleId = curData.id;
        var coverImageUrl = curData.coverImageUrl;
        var dataTitle = curData.title;
        html += '<li>';
        html += '<a target="_blank" onclick="window.parent.window.router(\'menuAndDetail\',{ rootColumnId:\'' + dataRootColumnId + '\',columnListId:\'' + columnListId + '\',articleId:\'' + articleId + '\' });" href="javascript:;" title="'+ dataTitle +'">';
        html += '<img width="150" height="150" alt="'+dataTitle+'" src="' + (coverImageUrl ? window.serverUploadPath + coverImageUrl : window.notImgUrl) + '" />';
        html += '</a>';
        html += '<p>';
        html += '<a target="_blank" onclick="window.router(\'menuAndDetail\',{ rootColumnId:\'' + dataRootColumnId + '\',columnListId:\'' + columnListId + '\',articleId:\'' + articleId + '\' });" href="javascript:;" title="'+ dataTitle +'">'+ dataTitle +'</a>';

        html += '</p>';
        html += '</li>';
    }
    html += '</ul>';
    html += '\n';
    html += '</div>';
    html += '\n';
    html += '<a class="abtn aright" href="#right" title="右移"></a>';
    html += '\n';
    html += '</div>';
    html += '\n';
    html += '<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>';
    html += '\n';
    html += '<script src="../../static/js/xSlider.js"></script>';
    html += '\n';
    html += '<script type="text/javascript">';
    html += '\n';
    html += '$(function(){';
    html += '\n';
    html += '$("#s1").xslider({';
    html += '\n';
    html += 'unitdisplayed:4,';
    html += '\n';
    html += 'movelength:1,';
    html += '\n';
    html += 'unitlen:176,';
    html += '\n';
    html += 'autoscroll:2500';
    html += '\n';
    html += '});';
    html += '\n';
    html += '})';
    html += '\n';
    html += '</script>';
    html += '\n';

    return html;

});
