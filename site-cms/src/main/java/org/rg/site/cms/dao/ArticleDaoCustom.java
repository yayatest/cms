package org.rg.site.cms.dao;

import java.util.List;
import java.util.Map;

import org.rg.site.cms.entity.Article;
import org.rg.site.cms.dto.ArticleQueryDTO;
import org.rg.site.cms.dto.CurrentArticleInfoDTO;
import org.rg.site.common.entity.PageModel;

/**
 * @author
 * @desc ArticleDaoCustom接口 
 * @date 2017-03-16
 */
public interface ArticleDaoCustom {

      PageModel<Article> queryArticlePage(ArticleQueryDTO articleQueryDTO);

      List<Article> queryArticleList(ArticleQueryDTO articleQueryDTO);

      List<Map<String, Object>> queryStatisMapList(ArticleQueryDTO articleQueryDTO);
      
      List<Article> queryNextArticleList(CurrentArticleInfoDTO currentArticleInfoDTO);
      
      List<Article> queryPreArticleList(CurrentArticleInfoDTO currentArticleInfoDTO);

}