/**
 * Created by Haitao Ji on 10/4/2017.
 */
jc.data.setup(function (data) {
    var html = '';
    if(!data || !data.length){
        return html;
    }
    html += '<ul>';
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
    return html;

});
