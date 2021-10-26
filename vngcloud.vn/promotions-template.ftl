<#assign journalArticleLocalService=serviceLocator.findService("com.liferay.journal.service.JournalArticleLocalService")>
<#assign assetEntryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetEntryLocalService")>
<#assign catLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")>
<#assign currentArticle=journalArticleLocalService.getArticle(groupId, .vars['reserved-article-id'].data)>
<#assign currentArticleResourcePrimKey=currentArticle.getResourcePrimKey()>
<#assign currentArticleAssetEntry=assetEntryLocalService.getEntry("com.liferay.journal.model.JournalArticle", currentArticleResourcePrimKey)>
<#assign currentArticleAssetEntryEntryId=currentArticleAssetEntry.getEntryId()>
<#assign exceptCat=['Test', 'test']>
<#assign hiddenCat=['New', 'new']>
<#assign newPromotion=false>
<section id="s-promotion">
    <div class="s-margin-height">&nbsp;</div>
    <div class="cloud-container v-section-inner article-detail mb-5">
        <div class="row position-relative">
            <div class="col-lg-8 col-md-7">
                <div class="article-detail-header t-upper">
                    <div class="d-flex align-items-center">
                        <#assign categories=catLocalService.getEntryCategories(currentArticleAssetEntryEntryId)>
                        <#if categories?size gt 0>
                            <div class="blog-category position-relative">
                                <#list categories as cat>
                                    <#if hiddenCat?seq_index_of(cat.getName()) lt 0>
                                        <p>${cat.getName()}</p>
                                    <#else>
                                        <#assign newPromotion=true>
                                    </#if>
                                </#list>
                            </div>
                        </#if>
                    </div>
                    <div class="article-detail-social hidden-xs">
                        <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fvngcloud.vn${themeDisplay.getLayout().friendlyURL}&amp;src=sdkpreparse">
                            <img class="lazyload" alt="VNG Cloud Contact" data-src="/documents/20126/949639/facebook-vector.svg" width="25px" height="25px"/>
                        </a>
                        <a href="https://m.me/VNGCLOUD.VN" target="_blank">
                            <img class="lazyload" alt="VNG Cloud Contact" data-src="/documents/20126/949639/messenger-vector.svg" width="25px" height="25px"/>
                        </a>
                    </div>
                </div>
                <div class="article-detail__content pb-3">
                    <div class="article-detail-title mt-2 mb-3 f-bold">${title.getData()}</div>
                    <ul class="article-meta list-unstyled p-0">
                        <#assign createTime=currentArticle.getCreateDate()?string('HH:mm')>
                        <#assign startTime_Data = getterUtil.getString(startTime.getData())>
                        <#if validator.isNotNull(startTime_Data)>
                            <#assign startTime_DateObj = dateUtil.parseDate("yyyy-MM-dd", startTime_Data, locale)>
                            <li class="article-publish pr-2" style="color: #888">${dateUtil.getDate(startTime_DateObj, "dd/MM/yyyy", locale)} ${createTime}</li>
                        </#if>
                        <#if !newPromotion>
                            <li class="article-status optional-bg c-white" style="font-size: 14px;padding: 0 4px;border-radius: 4px;">Hết hạn</li>
                        </#if>
                    </ul>
                    <#if CoverImage.getData()?? && CoverImage.getData() !="">
                        <div class="article-cover mb-3">
                            <img alt="${CoverImage.getAttribute('alt')}" data-fileentryid="${CoverImage.getAttribute("fileEntryId")}" class="cover-img img-cover lazyload" data-src="${CoverImage.getData()}" />
                        </div>
                    </#if>
                    ${Content.getData()}
                    <div class="article-footer pt-3 mt-3" style="border-top: 1px solid #eee">
                        <p class="mb-2">Mọi chi tiết về chương trình khuyến mại, Quý khách vui lòng liên hệ:</p>
                        <ul class="list-unstyled pl-3">
                            <li><span class="f-bold">Hotline</span>: <a href="tel:19001549" target="_blank" title="1900 1549">1900 1549</a></li> <li><span class="f-bold">Email</span>: <a href="mailto:support@vngcloud.vn" target="_blank" title="support@vngcloud.vn">support@vngcloud.vn</a></li> <li><span class="f-bold">Website</span>: <a href="/" title="VNG Cloud – Trusted Partner for Digital Transformation">https://vngcloud.vn</a></li> <li><span class="f-bold">Facebook:</span> <a href="https://facebook.com/vngcloud.vn" target="_blank" title="VNG Cloud Facebook Page">https://facebook.com/vngcloud.vn</a></li>
                        </ul>
                        <p style="background-color: #eaeaea;" class="text-center p-2 f-bold">VNG Cloud – Trusted Partner for Digital Transformation</p>
                    </div>
                    <div class="article-detail-social visible-xs-block text-right">
                        <a class="d-inline-block" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fvngcloud.vn${themeDisplay.getLayout().friendlyURL}&amp;src=sdkpreparse">
                            <img class="lazyload img-social" data-src="/documents/20126/949639/facebook-vector.svg" />
                        </a>
                        <a class="d-inline-block" href="https://m.me/VNGCLOUD.VN" target="_blank">
                            <img class="lazyload img-social" data-src="/documents/20126/949639/messenger-vector.svg" />
                        </a>
                    </div>
                </div>
                <#if Tag?has_content>
                    <div class="tag-list mt-4">
                        <div class="article-section position-relative mr-2 pr-2 pl-3 f-bold">TAG</div>
                        ${Tag.getData()}
                    </div>
                </#if>
                <#if externalContent?has_content && externalContent.getData() != ''>
                    <div class="external-cnt mt-4">${externalContent.getData()}</div>
                </#if>
            </div>
            <div class="col-lg-4 col-md-5">
                <div class="block-next pl-md-5">
                    <h5 class="section-title mb-3 f-bold"><#if locale=='vi_VN'>Đọc tiếp<#else>Read more</#if></h5>
                    <div class="section-content">
                        <#assign countNext=0>
                        <#assign groupArticle=journalArticleLocalService.getArticles(groupId, 1664034)>
                        <#assign groupArticle=groupArticle?sort_by('createDate')?reverse>
                        <#assign exceptURL=['1671611', currentArticle.getArticleId()]>
                        <#assign arrNext=[]>
                        <#list groupArticle as next>
                            <#if exceptURL?seq_index_of(next.getArticleId()) lt 0 && (!next?has_next || next.getArticleId() != groupArticle[next?index + 1].getArticleId())>
                                <#assign arrNext += [next]>
                            </#if>
                        </#list>
                        <#list arrNext as next>
                            <#if countNext gt 2><#break></#if>
                            <#assign nextArticleResourcePrimKey=next.getResourcePrimKey()>
                            <#assign nextArticleAssetEntry=assetEntryLocalService.getEntry("com.liferay.journal.model.JournalArticle", nextArticleResourcePrimKey)>
                            <#assign nextArticleAssetEntryEntryId=nextArticleAssetEntry.getEntryId()>
                            <#assign nextCategories=catLocalService.getEntryCategories(nextArticleAssetEntryEntryId)>
                            <#assign allowedNext = true>
                            <#if nextCategories?size gt 0>
                                <#list nextCategories as cat>
                                    <#if exceptCat?seq_index_of(cat.getName()) gte 0>
                                        <#assign allowedNext = false>
                                        <#break>
                                    </#if>
                                </#list>
                            </#if>
                            <#if allowedNext>
                                <#assign urlImageNext='/documents/20126/906379/default-placeholder.jpg'>
                                <#assign documentNext=saxReaderUtil.read(next.getContent())>
                                <#assign rootElementNext=documentNext.getRootElement()>
                                <#assign xPathTitle=saxReaderUtil.createXPath("dynamic-element[@name='title']/dynamic-content[@language-id='${locale}']")>
                                <#assign xTitleNext=xPathTitle.selectSingleNode(rootElementNext).getStringValue()> <#assign xPathUrl=saxReaderUtil.createXPath("dynamic-element[@name='urlDetail']/dynamic-content[@language-id='${locale}']")>
                                <#assign xURlNext=xPathUrl.selectSingleNode(rootElementNext).getStringValue()>
                                <#assign xPathImage=saxReaderUtil.createXPath("dynamic-element[@name='thumbnailImage']/dynamic-content[@language-id='${locale}']")>
                                <#assign xImage=xPathImage.selectSingleNode(rootElementNext).getStringValue()!''> <#assign imgJson=jsonFactoryUtil.createJSONObject(xImage)>
                                <#if xImage?has_content && xImage != ''>
                                    <#assign urlImageNext="/documents/" + imgJson.groupId +"/" +imgJson.fileEntryId +"/"+ imgJson.name +"/"+imgJson.uuid>
                                </#if>
                                <#assign countNext++>
                                <#assign nextArticleId=next.getArticleId() />
                                <article class="article-next mb-3 w-100 float-left" data-index="countNext">
                                    <p class="article-thumbnail mb-0 mr-2 float-left">
                                        <a class="d-block w-100 h-100" href="${xURlNext}">
                                            <img alt="" class="lazyload img-cover" data-src="${urlImageNext}" />
                                        </a>
                                    </p>
                                    <p class="article-title mb-0 f-bold" title="${xTitleNext}">
                                        <a href="${xURlNext}">${xTitleNext}</a>
                                    </p>
                                </article>
                            </#if>
                        </#list>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-7">
                <#assign assetLinkLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetLinkLocalService")>
                <#assign currentArticleRelatedLinks=assetLinkLocalService.getDirectLinks(currentArticleAssetEntryEntryId)> <#if currentArticleRelatedLinks?size gt 0>
                    <div class="mt-4 pt-4" style="border-top: 1px solid #eee">
                        <div class="related-blog">
                            <h5 class="section-title mb-3 position-relative f-bold"><#if locale=='vi_VN'>Bài liên quan<#else> Related Articles</#if></h5>
                            <div class="rel-content">
                                <#list currentArticleRelatedLinks as link>
                                    <#assign linkedAssetEntryId=link.getEntryId2()>
                                    <#assign relCategories=catLocalService.getEntryCategories(linkedAssetEntryId)>
                                    <#assign allowedRel = true>
                                    <#if relCategories?size gt 0>
                                        <#list relCategories as cat>
                                            <#if exceptCat?seq_index_of(cat.getName()) gte 0>
                                                <#assign allowedRel = false>
                                            </#if>
                                        </#list>
                                    </#if>
                                    <#if allowedRel>
                                        <#assign linkedAssetEntry=assetEntryLocalService.getEntry(linkedAssetEntryId)> <#assign linkedAssetEntryPrimaryKey=linkedAssetEntry.getClassPK()>
                                        <#assign linkedArticle=journalArticleLocalService.getLatestArticle(linkedAssetEntryPrimaryKey)>
                                        <#assign linkedArticleTitle=linkedArticle.getTitle(locale)>
                                        <#assign document=saxReaderUtil.read(linkedArticle.getContent())>
                                        <#assign rootElement=document.getRootElement()>
                                        <#assign xPathTitle=saxReaderUtil.createXPath("dynamic-element[@name='title']/dynamic-content[@language-id='${locale}']")>
                                        <#assign xTitleRelated=xPathTitle.selectSingleNode(rootElement).getStringValue()> <#assign xPathDescRelated=saxReaderUtil.createXPath("dynamic-element[@name='Description']/dynamic-content[@language-id='${locale}']")>
                                        <#assign xDescRelated=xPathDescRelated.selectSingleNode(rootElement).getStringValue()>
                                        <#assign xPathUrl=saxReaderUtil.createXPath("dynamic-element[@name='urlDetail']/dynamic-content[@language-id='${locale}']")>
                                        <#assign xURl=xPathUrl.selectSingleNode(rootElement).getStringValue()>
                                        <#assign xPathImage=saxReaderUtil.createXPath("dynamic-element[@name='thumbnailImage']/dynamic-content[@language-id='${locale}']")>
                                        <#assign xImage=xPathImage.selectSingleNode(rootElement).getStringValue()!''> <#assign imgJson=jsonFactoryUtil.createJSONObject(xImage)>
                                        <#if xImage?has_content && xImage != ''>
                                            <#assign urlImage="/documents/" + imgJson.groupId +"/" +imgJson.fileEntryId +"/"+ imgJson.name +"/"+imgJson.uuid>
                                        <#else>
                                            <#assign urlImage='/documents/20126/906379/default-placeholder.jpg'>
                                        </#if>
                                        <#assign xPathPushlish=saxReaderUtil.createXPath("dynamic-element[@name='startTime']/dynamic-content[@language-id='${locale}']")>
                                        <#assign publishTime=linkedArticle.getCreateDate()?string('HH:mm')>
                                        <#assign publishDate="">
                                        <#attempt>
                                            <#assign publish=xPathPushlish.selectSingleNode(rootElement).getStringValue()!"">
                                            <#assign publishDateObj = dateUtil.parseDate("yyyy-MM-dd", publish, locale)> <#assign publishDate = dateUtil.getDate(publishDateObj, "dd/MM/yyyy", locale)>
                                        <#recover>
                                            <#assign publishDate=linkedArticle.getCreateDate()?string('dd/MM/yyyy')>
                                        </#attempt>
                                        <div class="rel-blog position-relative mb-4">
                                            <div class="rel-img">
                                                <a class="position-relative w-100 h-100" href="<#if xURl?has_content>${xURl}<#else>javascript::void(0)</#if>">
                                                    <img class="img-cover lazyload" data-src="${urlImage}" />
                                                </a>
                                            </div>
                                            <div class="rel-content">
                                                <div class="rel-title f-bold transition-all" title="${xTitleRelated}">
                                                    <a href="<#if xURl?has_content>${xURl}<#else>javascript::void(0)</#if>">${xTitleRelated}</a>
                                                </div>
                                                <p class="article-meta">
                                                    <span class="article-publish mr-1" style="color: #aaa;">
                                                        <span class="time">${publishTime}</span>
                                                        <span class="date"> ${publishDate}</span>
                                                    </span>
                                                </p>
                                                <p class="rel-desc mt-1" title="${xDescRelated}"> ${xDescRelated} </p>
                                            </div>
                                        </div>
                                    </#if>
                                </#list>
                            </div>
                        </div>
                    </div>
                </#if>
                </div>
            </div>
        </div>
    </div>
</section>
<div id="fb-root"></div>
<style type="text/css"> section#s-promotion b { font-family: "Sarabun Bold", sans-serif; font-weight: 700; } .article-detail__content { border-bottom: 1px solid #eeeeee } .article-cover { overflow: hidden; background-color: #c4c4c4; } .article-thumbnail { width: 120px; height: 80px; overflow: hidden; background-color: #c4c4c4; } .article-thumbnail img { -webkit-transition: transform .3s; -moz-transition: transform .3s; -o-transition: transform .3s; -ms-transition: transform .3s; transition: transform .3s; } .article-title { font-size: 14px; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden; } .rel-title>a { font-size: 1.1em; } .article-title a, .rel-title>a { color: var(--text-headline); -webkit-transition: all .3s; -ms-transition: all .3s; -o-transition: all .3s; -moz-transition: all .3s; transition: all .3s; } .article-title>a:hover, .rel-title>a:hover { color: var(--vng-orange); } .article-detail__content img.pull-right { height: 200px; } .article-detail__content h3 { margin-bottom: 1rem; font-size: 17px; font-weight: 600; } .article-section { float: left; font-size: 18px; background: #eaeaea; } .article-section::before { content: " "; position: absolute; width: 8px; left: 0; top: 0; bottom: 0; background-color: var(--vng-orange); } .article-detail__content hr { border-top: .5px solid #BABABA } .article-detail-header { display: flex; align-items: center; justify-content: space-between; color: #747474; } .article-detail-content { border-bottom: 0.5px solid #747474; } .article-detail-header p { text-shadow: 0px 4px 30px rgba(0, 0, 0, 0.15); margin-bottom: 0; } .article-detail-header .blog-category { display: flex; align-items: center; } .article-detail-header .blog-category p { margin-right: 10px; } .article-meta li { display: inline-block; } .article-detail .article-detail-title { font-size: 20px; line-height: 1.4; } .article-detail-social img { margin-left: 20px; } .blog-image { text-align: center; } .blog-image img { width: 80%; } .rel-img { width: 210px; top: 0; bottom: 0; left: 0; background-color: #c4c4c4; overflow: hidden; } .tag-list a { padding-left: 10px; padding-right: 10px; display: inline-block; color: #484848; text-decoration: none; margin: 2px 5px 3px 0; border-radius: 20px; -webkit-transition: all .3s; -moz-transition: all .3s; -o-transition: all .3s; -ms-transition: all .3s; transition: all .3s; background-color: #eee; font-size: 15px; } .tag-list p { margin-bottom: 0 } .blog__shared-social { display: flex; align-items: flex-end; justify-content: flex-end; } .blog__shared-social img { width: 30px } .rel-content .article-publish { font-size: 13px; } .rel-content .article-meta { margin: 5px 0; } .rel-content .article-meta a { color: #808080; font-size: 15px; } .rel-content .article-meta a:hover { color: var(--dark-blue-2); } .rel-title, .rel-desc { display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; } .rel-desc { color: #808080; font-size: 15px; } .rel-blog .blog-category { display: flex; align-items: center; } .rel-blog .blog-category p { margin-right: 20px; margin-bottom: 0; color: #747474; text-shadow: 0px 4px 30px rgba(0, 0, 0, 0.15); } .rel-blog .blog-category p:not(:first-child)::before { position: absolute; content: '.'; left: -12px; top: -4px; } .article-cover img, .related-blog img { -webkit-transition: transform .3s; -moz-transition: transform .3s; -o-transition: transform .3s; transition: transform .3s; } .article-detail__content img:not(.img-social) { width: 100% } .caption { font-size: 85%; color: #888; text-align: center; padding-top: 5px; } .tag-list p>a:hover { background: var(--vng-orange); color: #fff; } .related-blog img:hover, .article-cover img:hover, .article-thumbnail:hover img { transform: scale(1.1); } .rel-blog a:hover { text-decoration: none; } .rel-blog a:hover .rel-title { color: var(--vng-orange); } @media (min-width: 576px) { .article-detail__content [class*='pull-'] { padding-top: 10px; padding-bottom: 5px; } .article-detail__content [class*='pull-']:not([class*='w-']) { width: 50% } .w-40 { width: 40% } .w-60 { width: 60% } .article-detail__content .pull-left { padding-right: 15px } .article-detail__content .pull-right { padding-left: 15px } .article-detail__content [class*='pull-'] img { width: 100%; height: auto; } .article-detail__content img.pull-right { padding-left: 10px; height: 300px; } .article-detail__content img.pull-left { height: 250px; padding-right: 10px; } .article-detail__content h3 { font-size: 19px; } .article-detail-header { border-bottom: 0.5px solid #747474; padding-bottom: 10px; } .rel-blog .blog-category { display: none; } .rel-blog { padding: 0px 15px 15px 225px; height: 140px; } .rel-img { position: absolute } } @media (max-width: 575.98px) { .article-detail__content p { text-align: justify; } .article-detail__content hr { border: 0; } .article-detail__content img:not(.cover-img):not(.img-social) { padding-bottom: 1rem; } .article-cover { margin-left: -15px; margin-right: -15px; } .related-blog__title { border-left: 15px solid var(--dark-blue-2); padding: 5px 10px; background: #fff; display: inline-block; } .rel-heading { font-size: 18px; } .article-detail__content { margin-bottom: 1.5rem; } .rel-img { width: 100%; height: 200px } } @media (max-width: 767.98px) { .rel-content { margin-top: 1rem } .block-next { margin-top: 1.5rem; padding-top: 1.5rem; border-top: 1px solid #eee } } @media(min-width: 768px) and (max-width: 991.98px) { .rel-img { height: 130px; width: 40% } .rel-blog { padding-left: 42% } .article-detail .article-detail-title { font-size: 1.5rem; } } @media(min-width: 768px) { .block-next { padding-top: 200px; } .block-next.fixed { position: sticky; top: 100px; padding-top: 0; } } @media (min-width: 992px) { .article-cover { height: 400px; } .article-detail .article-detail-title { font-size: 2rem; } } </style> <#if css?has_content && css.getData() !=''>${css.getData()}</#if> <script async="async" type="text/javascript"> (function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.async = true; js.src = 'https://connect.facebook.net/${themeDisplay.getLanguageId()}/sdk.js#xfbml=1&version=v3.2&appId=1844324365616250&autoLogAppblog=1'; fjs.parentNode.insertBefore(js, fjs); }(document, 'script', 'facebook-jssdk')); </script> <script type="text/javascript" defer> $(document).ready(function () { let blockNext = document.getElementsByClassName('block-next'); $(window).bind('scroll', function (e) { if ($(this).scrollTop() > 200) { blockNext[0].classList.add('fixed'); } else { blockNext[0].classList.remove('fixed'); } }) }) </script>
<#if js?has_content && js.getData() !=''>${js.getData()}</#if>