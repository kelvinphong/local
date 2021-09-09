<#assign par_tag=request.getParameter("tag")>
<#assign notFoundId = "1207587">
<#if !par_tag?has_content>
    <#assign journalContent=serviceLocator.findService("com.liferay.journal.util.JournalContent") />
    <#assign groupId=themeDisplay.getLayout().getGroupId() />
    <#attempt>
    <#assign footerContent=journalContent.getContent(groupId, notFoundId, "" , locale, themeDisplay) !"">
    <#if footerContent?has_content> ${footerContent}</#if>
    <#recover><div>&nbsp;</div>
    </#attempt>
<#elseif entries?has_content>
    <#assign AssetTagLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetTagLocalService")>
    <#assign param=[]>
    <#assign tabs = [{'id': 'blog', 'icon': 'inbox', 'folderId': 950084, 'name': 'Blog'},{'id': 'event', 'icon': 'calendar', 'folderId': 908959, 'name': 'Events'}, {'id': 'promotions', 'icon': 'gift', 'folderId': 1664034, 'name': 'Promotions'}]>
    <#assign mapTag={}>
    <#assign arrTag=[]>
    <#assign maxBlogOnceLoad=6>
    <#assign count=0>
    <#assign arrArticleMore=[]>
    <#assign numberArticle={}>
    <#assign hasLoadMore=false>
    <#assign href="/search-tag?tag=">
    <#if par_tag?contains(",")>
        <#list par_tag?split(",") as x>
            <#assign param=param + [htmlUtil.escapeJS(x?lower_case?trim)]>
        </#list>
    <#else>
        <#assign param=param + [htmlUtil.escapeJS(par_tag?lower_case?trim)]>
    </#if>
    <#assign trackingArticle = []>
    <section id="search-tag">
        <div class="search-tag__wrapper" style="margin: 0 auto">
            <div class="s-margin-height">&nbsp;</div>
           <div class="search-input mt-3 mb-3 position-relative">
                <div class="p-2 position-relative" id="search-input">
                <div class="tag-input"></div>
                </div>
                <div class="dropdown-menu" id="tag-menu"></div>
                <div class="ml-2">
                <div class="search-btn optional-bg flex-center h-100">
                    <i class="icon-search"></i>
                </div>
                </div>
            </div>
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-link active" id="nav-all-tab" data-toggle="tab" href="#nav-all" role="tab" aria-controls="nav-all" aria-selected="true"><i class="icon-search mr-2"></i> <#if locale == 'vi_VN'>Tất cả<#else>All</#if></a>
                    <#list tabs as tab>
                        <a class="nav-link" id="nav-${tab.id}-tab" data-toggle="tab" href="#nav-${tab.id}" role="tab" aria-controls="nav-${tab.id}" aria-selected="false"><i class="icon-${tab.icon} mr-2"> </i>${tab.name}</a>
                    </#list>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                    <p class="number-result mb-0">Tìm thấy <strong></strong> kết quả phù hợp
                    <div class="list-article">
                        <#list entries as entry>
                            <#assign tags=AssetTagLocalService.getEntryTags(entry.getEntryId())>
                            <#list tags as _tmpTag>
                                <#if param?seq_index_of(_tmpTag.getName()?lower_case?trim) gte 0 && trackingArticle?seq_index_of(entry.getEntryId()) lt 0>
                                    <#assign assetRenderer=entry.getAssetRenderer() />
                                    <#assign className=assetRenderer.getClassName()>
                                    <#assign image="">
                                    <#assign urlImage='/documents/20126/906379/default-placeholder.jpg'>
                                    <#if className=="com.liferay.journal.model.JournalArticle">
                                        <#assign trackingArticle=trackingArticle + [entry.getEntryId()]>
                                        <#assign count++ />
                                        <#assign journalArticle=assetRenderer.getArticle()>
                                        <#assign document=saxReaderUtil.read(journalArticle.getContent())>
                                        <#assign rootElement=document.getRootElement()>
                                        <#assign xPathTitle=saxReaderUtil.createXPath("dynamic-element[@name='BlogTitle']/dynamic-content[@language-id='${locale}']")>
                                        <#assign title="">
                                        <#attempt>
                                            <#assign title=xPathTitle.selectSingleNode(rootElement).getStringValue()!"">
                                        <#recover>
                                            <#assign xPathTitle=saxReaderUtil.createXPath("dynamic-element[@name='title']/dynamic-content[@language-id='${locale}']")>
                                            <#assign title=xPathTitle.selectSingleNode(rootElement).getStringValue()!"">
                                        </#attempt>
                                        <#assign desc="">
                                        <#assign xPathDesc=saxReaderUtil.createXPath("dynamic-element[@name='Description']/dynamic-content[@language-id='${locale}']")>
                                        <#attempt>
                                            <#assign desc=xPathDesc.selectSingleNode(rootElement).getStringValue()!"">
                                        <#recover>
                                            <#assign xPathDesc=saxReaderUtil.createXPath("dynamic-element[@name='description']/dynamic-content[@language-id='${locale}']")>
                                            <#assign desc=xPathTitle.selectSingleNode(rootElement).getStringValue()!"">
                                        </#attempt>
                                        <#assign url="">
                                        <#attempt>
                                            <#assign url=journalArticle.urlTitle>
                                        <#recover>
                                            <#assign xPathUrl=saxReaderUtil.createXPath("dynamic-element[@name='urlDetail']/dynamic-content[@language-id='${locale}']")>
                                            <#assign url=xPathUrl.selectSingleNode(rootElement).getStringValue()!"">
                                        </#attempt>
                                        <#if !url?starts_with('/')>
                                            <#assign url='/' + url>
                                        </#if>
                                        <#assign xPathPushlish=saxReaderUtil.createXPath("dynamic-element[@name='startTime']/dynamic-content[@language-id='${locale}']")>
                                        <#assign publishTime=journalArticle.getCreateDate()?string('HH:mm')>
                                        <#assign publishDate="">
                                        <#attempt>
                                            <#assign publish=xPathPushlish.selectSingleNode(rootElement).getStringValue()!"">
                                            <#assign publishDateObj = dateUtil.parseDate("yyyy-MM-dd", publish, locale)>
                                            <#assign publishDate = dateUtil.getDate(publishDateObj, "dd/MM/yyyy", locale)>
                                        <#recover>
                                            <#assign publishDate=journalArticle.getCreateDate()?string('dd/MM/yyyy')>
                                        </#attempt>
                                        <#assign xPathImage=saxReaderUtil.createXPath("dynamic-element[@name='thumbnailImage']/dynamic-content[@language-id='${locale}']")>
                                        <#attempt>
                                            <#assign image=xPathImage.selectSingleNode(rootElement).getStringValue()>
                                            <#assign imgJson=jsonFactoryUtil.createJSONObject(image)>
                                            <#assign urlImage="/documents/" + imgJson.groupId +"/" +imgJson.fileEntryId +"/"+imgJson.name+"/"+imgJson.uuid>
                                        <#recover>
                                            <#assign xPathImage=saxReaderUtil.createXPath("dynamic-element[@name='thumbnail']/dynamic-content[@language-id='${locale}']")>
                                            <#attempt>
                                                <#assign image=xPathImage.selectSingleNode(rootElement).getStringValue()>
                                                <#assign imgJson=jsonFactoryUtil.createJSONObject(image)>
                                                <#assign urlImage="/documents/" + imgJson.groupId +"/" +imgJson.fileEntryId +"/"+imgJson.name+"/"+imgJson.uuid>
                                            <#recover>
                                            </#attempt>
                                        </#attempt>
                                        <div class="article-item w-100 position-relative<#if count gt maxBlogOnceLoad> more<#else> wow fadeIn</#if>" article-id="${journalArticle.getArticleId()}">
                                            <p class="article-thumbnail mb-0">
                                                <a href="${url}" class="d-block h-100 w-100 position-relative">
                                                    <img class="lazyload img-cover" data-src="${urlImage}" alt="">
                                                </a>
                                            </p>
                                            <div class="article-content">
                                                <p class="article-title mb-0">
                                                    <a href="${url}" class="d-block">${title}</a>
                                                </p>
                                                <p class="article-meta">
                                                    <span class="article-publish">
                                                        <span class="time">${publishTime}</span>
                                                        <span class="date">${publishDate}</span>
                                                    </span>
                                                </p>
                                                <p class="article-summary">${desc}</p>
                                            </div>
                                        </div>
                                        <#assign arrArticleMore=arrArticleMore + [{"id": journalArticle.getArticleId(), "title": title, "desc": desc, "url": url, "image": urlImage, "folderId": journalArticle.getFolderId(), "time": publishTime, "date": publishDate}]>
                                    </#if>
                                </#if>
                                <#if arrTag?seq_index_of(_tmpTag.getName()) lt 0>
                                    <#assign arrTag=arrTag + [_tmpTag.getName()]>
                                </#if>
                            </#list>
                        </#list>
                        <#if count gt maxBlogOnceLoad>
                            <#assign hasLoadMore=true>
                        </#if>
                        <#assign numberArticle=numberArticle + {'all': count}>
                    </div>
                </div>
                <#list tabs as tab>
                    <#assign countByTab = 0>
                    <#assign tabId=tab.id>
                    <div class="tab-pane fade" id="nav-${tabId}" role="tabpanel" aria-labelledby="nav-${tabId}-tab">
                        <p class="number-result mb-0">Tìm thấy <strong></strong> kết quả phù hợp
                        <div class="list-article">
                        <#list arrArticleMore as x>
                            <#if x.folderId == tab.folderId>
                                <#assign countByTab++>
                                <div class="article-item w-100 position-relative<#if countByTab gt maxBlogOnceLoad> more<#else> wow fadeIn</#if>" article-id="${x.id}">
                                    <p class="article-thumbnail mb-0">
                                        <a href="${url}" class="d-block h-100 w-100 position-relative">
                                            <img class="lazyload img-cover" data-src="${x.image}" alt="">
                                        </a>
                                    </p>
                                    <div class="article-content">
                                        <p class="article-title mb-0">
                                            <a href="${x.url}" class="d-block">${x.title}</a>
                                        </p>
                                        <p class="article-meta">
                                            <span class="article-publish">
                                                <span class="time">${x.time}</span>
                                                <span class="date">${x.date}</span>
                                            </span>
                                        </p>
                                        <p class="article-summary">${x.desc}</p>
                                    </div>
                                </div>
                            </#if>
                        </#list>
                        </div>
                    </div>
                    <#assign numberArticle=numberArticle + {tabId: countByTab}>
                </#list>
            </div>
            <#if hasLoadMore>
                <div class="article-item block-placehoder w-100 position-relative hidden">
                    <div class="article-thumbnail mb-0">
                    <div class="placeholder-block img-placeholder"></div>
                    </div>
                    <div class="article-content">
                    <div class="placeholder-block"></div>
                    <div class="placeholder-block"></div>
                    <div class="placeholder-block"></div>
                    </div>
                </div>
            </#if>
            <div class="s-margin-height">&nbsp;</div>
        </div>
    </section>
    <style type="text/css">
    @media(min-width:576px) {
      .search-tag__wrapper {
        max-width: 80%
      }
    }

    @media(min-width:1200px) {
      .search-tag__wrapper {
        max-width: 70% !important
      }

      .article-item .article-title {
        font-size: 1.2em !important
      }
    }

    section#search-tag .tab-content {
      padding-top: 15px
    }

    .search-input {
      display: grid;
      grid-template-columns: auto 80px;
    }
    .search-input>div:first-child {
      border: 1px solid #ddd;
    }
    .search-input>div:first-child,
    .search-btn {
      border-radius: 4px;
    }

    .search-btn {
      max-height: 50px;
      cursor: pointer;
    }
    .tag-input {
      display: inline-block;
      margin: 2px;
    }
    .tag-input.selected {
      border-radius: 4px;
      color: #fff;
      background-color: #28a745;
      text-align: center;
      padding: 2px 4px;
    }
    .tag-input .clear {
      padding-left: 3px;
      position: relative;
      cursor: pointer;
    }
    .tag-input .clear:hover {
      font-weight: 600;
    }
    .tag-input .clear::before {
      content: '';
      position: absolute;
      top: 6px;
      bottom: 2px;
      left: 0;
      width: 1px;
      background-color: #fff;
    }
    .search-input .dropdown-item {
      cursor: pointer;
    }
    .search-input .dropdown-menu.show {
      max-width: unset !important;
      right: 0;
      margin-top: 5px
    }
    .search-input .dropdown-item:active {
      background-color: rgb(188, 220, 245);
    }
    .search-input .dropdown-item.active {
      display: none;
    }
    .search-input .icon-search {
      font-size: 20px;
      color: #fff;
    }

    .search-tag__wrapper {
      padding-left: 15px;
      padding-right: 15px
    }

    .search-tag__wrapper nav {
      margin-bottom: 15px
    }

    .search-tag__wrapper .nav-tabs {
      border-bottom-width: 3px;
      border-bottom-color: #f4f4f4
    }

    .search-tag__wrapper .nav-link {
      border: 0;
      color: #999
    }

    .search-tag__wrapper .nav-link.active {
      color: #000 !important
    }

    .number-result {
      color: #888;
      font-size: 15px
    }

    .number-result>strong {
      color: #000
    }

    .search-tag__wrapper .nav-link:after {
      content: '';
      position: absolute;
      bottom: -3px;
      left: 0;
      height: 3px;
      width: 0;
      background: var(--dark-blue-2);
      -webkit-transition: width .3s;
      -moz-transition: width .3s;
      -ms-transition: width .3s;
      -o-transition: width .3s;
      transition: width .3s
    }

    .search-tag__wrapper .nav-link.active:after {
      width: 100%
    }

    .list-article {
      padding-top: 20px
    }

    .article-item {
      margin-bottom: 30px;
      float: left
    }

    .article-item.more {
      display: none;
    }

    .article-thumbnail {
      float: left;
      width: 33%;
      margin-right: 15px
    }

    .article-thumbnail a,
    .placeholder-block.img-placeholder {
      padding-bottom: 66.67%;
      position: relative;
      overflow: hidden
    }

    .article-thumbnail img {
      position: absolute;
      top: 0;
      left: 0;
      -webkit-transition: all .3s cubic-bezier(.25, .8, .25, 1);
      -moz-transition: all .3s cubic-bezier(.25, .8, .25, 1);
      -ms-transition: all .3s cubic-bezier(.25, .8, .25, 1);
      -o-transition: all .3s cubic-bezier(.25, .8, .25, 1);
      transition: all .3s cubic-bezier(.25, .8, .25, 1)
    }

    .article-item .article-title {
      font-size: 1em;
      font-weight: 600;
      line-height: 1.4
    }

    .article-item .article-title a {
      color: #333
    }

    .article-meta {
      color: #aaa;
      font-size: 14px;
      margin: 6px 0
    }

    .article-item .article-summary {
      color: #888;
      line-height: 1.4;
      display: -webkit-box;
      -webkit-line-clamp: 3;
      -webkit-box-orient: vertical;
      overflow: hidden
    }

    .article-item::after {
      content: "";
      display: block;
      width: 100%;
      height: 1px;
      background: #eee;
      position: absolute;
      left: 0;
      bottom: -15px
    }

    .article-thumbnail img:hover {
      transform: scale(1.1)
    }

    .article-title a:hover {
      color: var(--vng-orange)
    }

    .block-placehoder.hidden {
      display: none;
    }

    .block-placehoder .article-content {
      margin-left: calc(33% + 15px)
    }

    .block-placehoder .article-content .placeholder-block:nth-child(1) {
      width: 300px;
    }

    .block-placehoder .article-content .placeholder-block:nth-child(2) {
      width: 100px;
    }

    .block-placehoder .article-content .placeholder-block:nth-child(3) {
      width: 100%;
      min-height: 100px !important;
    }

    .placeholder-block {
      background-color: #c9c8c4;
      height: 20px;
      margin: 5px 0;
      min-width: 100px;
      opacity: .1;
      border-radius: 5px;
      animation: fading 1.5s infinite;
    }
    @media (max-width: 991.98px) {
      .search-input .icon-search {
        font-size: 15px;
      }
    }
    @media (min-width: 576px) and (max-width: 991.98px) {
      .search-input {
        grid-template-columns: auto 80px;
      }
    }
    @media (max-width: 575.98px) {
      .search-input {
        grid-template-columns: auto 50px;
      }
    }
  </style>
    <script type="text/javascript" defer>
        $(document).ready(function () {
            const numberArticle = ${jsonFactoryUtil.looseSerializeDeep(numberArticle)},
                arrTag = ${jsonFactoryUtil.looseSerializeDeep(arrTag)},
                tabPane = document.querySelectorAll(".tab-pane"),
                searchTag = document.querySelector("#search-input"),
                dropdownTag = document.querySelector("#tag-menu");

            var selectedTag = ${jsonFactoryUtil.looseSerializeDeep(param)},
                urlSearch = "${href}";

            searchTag.innerHTML = renderListSelectedTag();
            dropdownTag.innerHTML = renderListTag();

            function renderListSelectedTag() {
            let result = "";
            selectedTag.map(function(val, index) {
                result += renderSelectedTag(val);
            });

            return result;
            }

            function renderSelectedTag(tag) {
            let index = arrTag.indexOf(tag);
            return "<div class='tag-input selected' data-index='" + index + "' data-value='" + tag + "'>" + tag +" <span class='clear' title='Clear'>x</span></div>";
            }

            function renderListTag() {
            let result = '';
            arrTag.map(function(val, index) {
                let active = selectedTag.indexOf(val) > -1 ? ' active' : '';
                result += '<div class="dropdown-item' + active + '" data-tag="'+ val +'" type="button">' + val + '</div>'
            });

            return result;
            }
        $('#search-input').on('click', function (e) {
            e.preventDefault();
            $(this).parent().find('.dropdown-menu').addClass('show');
            document.addEventListener("click", clickOutsiteDropdown, true);
        });

        $('.search-btn').on('click', function(e) {
            e.preventDefault();

            let size = selectedTag.length;

            selectedTag.map(function(tag, index) {
            urlSearch += _.escape(tag) + (index < size - 1 ? ',' : '')
            })
            
            window.location.href = urlSearch;
        })
        $('.dropdown-item').on('click', function (e) {
            e.preventDefault();
            let tag = $(this).attr('data-tag');
            if (tag) {
            e.target.classList.add('active');
            selectedTag.push(tag);
            $(searchTag).append(renderSelectedTag(tag))
            }
        })
        $('#search-input').on('click', '.clear', function(e) {
            e.preventDefault();

            let target = $(this).parent().attr('data-value'),
            index = $(this).parent().attr('data-index'),
            searchIndex = selectedTag.indexOf(target);
            if (searchIndex > -1) {
            selectedTag.splice(searchIndex, 1);
            searchTag.innerHTML = renderListSelectedTag();
            $(document.querySelectorAll(".dropdown-item")).eq(index).removeClass('active');
            }
        })
        innerNumberArticle();

        function innerNumberArticle() {
            if (tabPane.length > 0) $.each(tabPane, function (key, ele) {
            let num = $(ele).find(".number-result");
            num && ($(num).find("strong")[0].innerHTML = numberArticle[ele.id.split("nav-")[1]])
            })
        }

        function clickOutsiteDropdown(selector) {
            let tagMenu = document.getElementById("tag-menu");
            if (!tagMenu || tagMenu.contains(selector.target)) return;

            tagMenu.classList.remove('show')
            document.removeEventListener("click", clickOutsiteDropdown, true)
        }
        });
    </script>
    <#if hasLoadMore>
    <script type="text/javascript" defer>
        $(document).ready(function(e) {
            const tabPane = document.querySelectorAll(".tab-pane"),
                blockPlaceholder = document.querySelector(".block-placehoder"),
                offsetTop = 200,
                limit = "${maxBlogOnceLoad}";

            var isLoading = false;
            $(window).on('scroll', function (e) {
                !isLoading && loadMore();
            })

            function loadMore() {
                if ($(this).scrollTop() + offsetTop >= $(document).height() - $(window).height()) {
                    if (tabPane.length > 0) {
                        let active = $(tabPane).filter('div[class*="active"]').first();
                        if (active.length > 0) {
                            let items = $(active).find('.more');
                            if (items.length > 0) {
                                isLoading = true;
                                blockPlaceholder.classList.remove('hidden');
                                setTimeout(function (e) {
                                    isLoading = false;
                                    blockPlaceholder.classList.add('hidden');
                                    items.slice(0, parseInt(limit)).removeClass('more');
                                }, 500)
                            }
                        }
                    }
                }
            }
        })
    </script>
    </#if>
</#if>