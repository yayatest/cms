package org.rg.site.cms.service;

import java.util.List;
import java.util.Map;

import org.rg.site.cms.dao.ArticleDao;
import org.rg.site.cms.dto.CurrentArticleInfoDTO;
import org.rg.site.cms.entity.Article;
import org.rg.site.common.entity.PageModel;
import org.rg.site.common.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.rg.site.cms.dto.ArticleQueryDTO;
/**
 * @author
 * @desc ArticleService类 
 * @date 2017-03-16
 */
@Service
public class ArticleService extends CommonService<Article,String > {

    @Autowired
    private ArticleDao articleDao;

    @Autowired
    public void setArticleDao(ArticleDao articleDao){
      super.setCommonDao(articleDao);
    }

    public PageModel<Article> queryArticlePage(ArticleQueryDTO articleQueryDTO){
           return this.articleDao.queryArticlePage(articleQueryDTO);
    }

    public List<Article> queryArticleList(ArticleQueryDTO articleQueryDTO){
           return this.articleDao.queryArticleList(articleQueryDTO);
    }
    
    public List<Map<String, Object>> queryStatisMapList(ArticleQueryDTO articleQueryDTO){
    	   return this.articleDao.queryStatisMapList(articleQueryDTO);
    }
    
    public Article queryNextArticle(CurrentArticleInfoDTO currentArticleInfoDTO){
    	   Article article = null;
    	   List<Article> articleList = this.articleDao.queryNextArticleList(currentArticleInfoDTO);
    	   if(articleList != null && articleList.size() > 0){
    		   article = articleList.get(0);
    	   }
    	   return article;
    }
    
    public Article queryPreArticle(CurrentArticleInfoDTO currentArticleInfoDTO){
           Article article = null;
           List<Article> articleList = this.articleDao.queryPreArticleList(currentArticleInfoDTO);
           if(articleList != null && articleList.size() > 0){
    		   article = articleList.get(0);
    	   }
    	   return article;
    }


}