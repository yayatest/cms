# 项目（site）

  项目简介：<br>
  
    1、该项目是一款使用Java编写的免费的轻量级CMS系统，目前提供了从后台管理到前端展现的整体解决方案。
    2、用户可以不编写一句代码，就制作出一个默认风格的CMS站点。
    3、前端页面自适应，支持PC和H5端，采用前后端分离的机制实现。后端支持蓝和红换肤功能。
    4、项目技术分层明显，用户可以根据自己的业务模块进行相应地扩展，很方便二次开发。
  
  技术架构：<br>
  
     1、技术选型：
        后端
         ·核心框架：Spring Framework 4.2.5.RELEASE
         ·安全框架：Apache Shiro 1.3.2
         ·视图框架：Spring MVC 4.2.5.RELEASE
         ·数据库连接池：Tomcat JDBC
         ·缓存框架：Ehcache 
         ·ORM框架：Spring Data JPA、hibernate 4.3.5.Final
         ·日志管理：SLF4J 1.7.21、Log4j
         ·编辑器：ueditor
         ·工具类：Apache Commons、Jackson 2.8.5、POI 3.15
         ·view层：JSP
         ·数据库：mysql、oracle等关系型数据库

        前端
         ·dom : Jquery
         ·分页 : jquery.pagination
         ·UI管理 : common
         ·UI集成 : uiExtend
         ·滚动条 : jquery.nicescroll.min.js
         ·图表 ： highcharts
         ·3D图表 ：highcharts-more
         ·轮播图 ： jquery-swipe
         ·表单提交 ：jquery.form
         ·文件上传 ：jquery.uploadify
         ·表单验证 ：jquery.validator
         ·展现树 ：jquery.ztree
         ·html模版引擎 ：template
     2、项目结构：
       2.1、site-common：系统基础服务抽象，包括entity、dao和service的基础抽象；
       2.2、site-org：用户权限模块服务实现；
       2.3、site-cms:资讯类模块服务实现；
       2.4、site-module-admin：天梯后台web项目实现；
       2.5、site-module-interface：天梯接口项目实现；
       2.6、site-module-gateway：天梯前端自适应项目实现（是一个静态项目，调用site-module-interface获取数据）；
     3、使用说明：
      3.0、本项目JDK默认显示的是1.7，用户可以自行选择1.7+。
      3.1、数据库使用mysql，初始化脚本位于site-module-admin中的src/main/webapp/scripts/site_stage.sql。
      3.2、后台的登陆路径为http://ip:端口/login,用户名为admin，初始密码为123456。
      3.3、后台中所用到的图标是从font文件夹里面选择copy进去的，font文件夹在聊天群里面拥有。
      3.4、编辑器的配置修改editor_config.js的var context_ = "http://127.0.0.1:8080/site-module-admin";
      3.5、前端项目（site-module-gateway）是一个静态项目，可以直接部署到web容器，支持多端自适应，需要跑接口系统。
      3.6、采用前后端分离机制获取数据，在/src/main/webapp/static/js/config.js文件里分别配置接口地址和后台项目地址;
      3.7、前台项目可以直接部署到Nginx访问，也可以跑site-module-gateway应用。
      3.8、如果是tomcat跑前端应用，访问路径为http://ip:端口/site-module-gateway/site/index/index.html。
        