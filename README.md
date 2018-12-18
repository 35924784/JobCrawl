
# 基于Scrapy框架+selenium 的Python3.6 JobCrawl爬虫


* Items.py : 定义爬取的数据
* pipelines.py : 管道文件，异步存储爬取的数据
* spiders文件夹 : 爬虫程序
* settings.py : Srapy设定，请参考 [官方文档](https://scrapy-chs.readthedocs.io/zh_CN/latest/topics/settings.html#topics-settings-ref)
* scrapy crwal

* 爬取三大知名网站,使用三种技术手段
* 第一种直接从网页中获取数据，采用的是scrapy的基础爬虫模块，爬的是**51job**
* 第二种采用扒接口,从接口中获取数据，爬的是**智联招聘**
* 第三种采用的是整站的爬取,爬的是**拉钩网**
* 获取想要的数据并将数据存入mysql数据库中，方便以后的就业趋势分析
## 实现功能：
* 从三大知名网站上爬取就业信息，爬取**发布工作的日期**，**薪资**，**城市**，**岗位有那些福利**，**要求**，**分类**等等，并将爬到的数据存到**mysql数据库中**

##  运行项目
* git clone https://github.com/35924784/JobCrawl.git
* cd JobCrawl
* pip3.6 install -r requirements.txt

##运行指南

* scrapy crawl job51 -a keywords=java
* scrapy crawl zhaopin -a keywords=java
* scrapy crawl lagou


例如：java,php,go,c++,python,大数据,算法
