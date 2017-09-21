package org.rg.site.cms.dao;

import org.rg.site.cms.entity.Article;
import org.rg.site.common.dao.CommonDao;

/**
 * @author
 * @desc ArticleDao接口 
 * @date 2017-03-16
 */
public interface ArticleDao extends ArticleDaoCustom,CommonDao<Article,String> {

}