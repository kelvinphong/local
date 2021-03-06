<#assign redirect=themeDisplay.getLayout().getExpandoBridge().getAttribute("Redirect")!"">
<#if redirect?has_content && redirect !=''>
<script type="text/javascript">
    window.location.href = "${redirect}";
</script>
</#if>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5TJ4NZZ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<link rel="stylesheet" type="text/css" href="/o/vng-cloud-theme/css/animate.css">
<#assign activeMenu="">
<#assign menuFixed=themeDisplay.getLayout().getExpandoBridge().getAttribute("Fixed")!true>
<#assign path=themeDisplay.getLayout().getExpandoBridge().getAttribute("Path")!''>
<#assign friendlyURL=themeDisplay.getLayoutFriendlyURL(layout)>
<#assign preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "borderless") />
<#assign plId=layout.getPlid()>
<header id="header_area" class="v-header" role="banner">
    <div class="navbar v-navbar navbar-fixed-top" id="v-navbar">
        <div class="cloud-container d-flex align-items-center">
            <div class="mobile-g-btn d-flex align-items-center">
                <button type="button" id="nav-toggle" class="navbar-toggle d-flex" data-target="navigation-menu">
                    <img class="abs-icon"
                        src="/documents/20126/906379/vng-cloud-icon-menu.svg" />
                    <img class="pos-icon"
                        src="/documents/20126/906379/vng-cloud-icon-menu-color.svg" />
                </button>
                <div class="t-upper active-menu ml-1" id="active-menu"></div>
            </div>
            <div class="navbar-header flex-center">
                <a class="navbar-brand vng-cloud-logo" href="/">
                    <img class="vng-cloud-logo-main lazyload img-fluid"
                        data-src="/documents/20126/906379/vng-cloud-logo-white.png" alt="">
                    <img class="vng-cloud-logo-sub lazyload img-fluid"
                        data-src="/documents/20126/906379/logo-vng-cloud-color.png" alt="">
                </a>
            </div>
            <div class="navigation-group">
                <nav id="navigation-menu" class="navbar-collapse">
                    <a id="nav-toggle" class="navbar-toggle collapsed p-0" data-toggle="collapse" data-target="navigation-menu" aria-expanded="false" title="Toggle Menu">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
                            viewBox="0 0 18 18">
                            <g fill="#050505">
                                <path d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z" />
                        </svg>
                    </a>
                    <div class="toggle-logo">
                        <img class="lazyload" data-src="/documents/20126/906379/logo-vng-cloud-color.png" />
                    </div>
                    <ul class="nav navbar-nav menu-nav" id="menu-nav">
                        <#assign groupActive="/product/iaas">
                        <#foreach nav_item in entries>
                            <#assign hasChild=false />
                            <#assign hasChildLev2=false />
                            <#assign is_nav_child_selected=false />
                            <#assign is_nav_child_lev2_selected=false />
                            <#assign megaMenu=nav_item.getName()=='Products' || nav_item.getName()=='S???n ph???m'>
                            <#if nav_item.isBrowsable()>
                                <#if nav_item.hasBrowsableChildren()>
                                    <#assign hasChild=true />
                                    <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                        <#if child_nav_item.isSelected()>
                                            <#assign is_nav_child_selected=true />
                                        </#if>
                                        <#if child_nav_item.isBrowsable()>
                                            <#assign hasChildLev2=true />
                                            <#foreach child_lev2_nav_item in
                                                child_nav_item.getBrowsableChildren()>
                                                <#if child_lev2_nav_item.isSelected()>
                                                    <#assign
                                                        is_nav_child_lev2_selected=true />
                                                </#if>
                                            </#foreach>
                                        </#if>
                                    </#foreach>
                                </#if>
                                <#if nav_item.isSelected() || is_nav_child_selected>
                                    <#assign activeMenu=nav_item.getName()>
                                </#if>
                                <li class="nav-item<#if nav_item.isSelected() || is_nav_child_selected> active</#if><#if hasChild> has-child</#if>">
                                    <#if hasChild>
                                        <a class="nav-link menu-main transition-all h-100"
                                            aria-labelledby="layout_${nav_item.getLayoutId()}"
                                            href="javascript:void(0)"
                                            ${nav_item.getTarget()} role="menuitem"
                                            id="dropdown_${nav_item.getLayoutId()}"
                                            data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false"> ${nav_item.getName()}
                                        </a>
                                    <#else>
                                        <a class="nav-link menu-main transition-all h-100"
                                            aria-labelledby="layout_${nav_item.getLayoutId()}"
                                            href="${nav_item.getURL()}"
                                            ${nav_item.getTarget()}
                                            role="menuitem">${nav_item.getName()}
                                        </a>
                                    </#if>
                                    <#if hasChild>
                                        <div class="child-nav dropdown-menu<#if megaMenu> cloud-container child-nav__full-screen</#if>" id="child-nav"
                                            aria-labelledby="dropdown_${nav_item.getLayoutId()}">
                                            <#if megaMenu>
                                                <div class="menu-prod-wrapper">
                                                    <div class="nav flex-column prod-group nav-pills p-3 h-100" id="prod-tab" role="tablist" aria-orientation="vertical">
                                                    <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                                        <#assign is_nav_child_selected=child_nav_item.isSelected()>
                                                        <#assign childNavLayoutId=child_nav_item.getLayoutId()>
                                                        <#assign active=child_nav_item.getLayout().getFriendlyURL()==groupActive>
                                                        <div class="category mb-3 mt-sm-3 position-relative<#if active> show</#if>">
                                                            <a class="nav-link category-link p-3 transition-all<#if active> active show</#if>"
                                                                id="${childNavLayoutId}-tab"
                                                                data-toggle="pill"
                                                                href="#${childNavLayoutId}"
                                                                role="tab"
                                                                aria-controls="${childNavLayoutId}"
                                                                aria-selected="false">${child_nav_item.getName()}
                                                            </a>
                                                            <div class="category-desc p-3">
                                                                <div class="d-lg-flex align-items-center">
                                                                    <div class="img pl-1">
                                                                        <#assign pathImage=child_nav_item.getLayout().getExpandoBridge().getAttribute("Image")!''>
                                                                        <img class="lazyload hidden-xs" data-src="${pathImage}" />
                                                                    </div>
                                                                    <div class="desc position-relative">
                                                                        ${child_nav_item.getLayout().getDescription(themeDisplay.getLanguageId())}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </#foreach>
                                                    </div>
                                                    <div class="tab-content w-100" id="prod-tabContent">
                                                    <#assign notCategory=["saas"]>
                                                    <#assign inlineCategory=["database", "container"]>
                                                    <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                                        <#assign is_nav_child_selected=child_nav_item.isSelected()>
                                                        <#assign childNavLayoutId=child_nav_item.getLayoutId()>
                                                        <#assign active=child_nav_item.getLayout().getFriendlyURL()==groupActive>
                                                        <div class="tab-pane fade row<#if active> active show</#if>" id="${childNavLayoutId}" role="tabpanel" aria-labelledby="${childNavLayoutId}-tab">
                                                        <#foreach prodCategory in child_nav_item.getBrowsableChildren()>
                                                            <div class="prod-category col-<#if inlineCategory?seq_index_of(prodCategory.getName()?lower_case?trim) lt 0>12<#else>sm-4 inline</#if>">
                                                                <#if notCategory?seq_index_of(prodCategory.getName()?lower_case?trim) gte 0>
                                                                <div class="category-name not-category">&nbsp;</div>
                                                                <#else>
                                                                <div class="category-name">${prodCategory.getName()}</div>
                                                                </#if>
                                                                <div class="prod-block__wrapper">
                                                                <#foreach product in prodCategory.getBrowsableChildren()>
                                                                    <#assign productActive=product.isSelected()>
                                                                    <div class="prod-block nav-child-item<#if productActive> active</#if>">
                                                                        <a class="nav-link h-100"
                                                                            ${product.getTarget()}
                                                                            aria-labelledby="layout_${product.getLayoutId()}"
                                                                            href="${product.getURL()}"
                                                                            role="menuitem"
                                                                            title="${product.getName()}">
                                                                            <div
                                                                                class="title transition-all">
                                                                                ${product.getName()?split('|')[0]}
                                                                            </div>
                                                                            <div
                                                                                class="description">
                                                                                ${product.getName()?split('|')[1]!''}
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                </#foreach>
                                                                </div>
                                                            </div>
                                                        </#foreach>
                                                        </div>
                                                    </#foreach>
                                                    </div>
                                                </div>
                                            <#else>
                                                <div>
                                                    <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                                        <#assign is_nav_child_selected=false />
                                                        <#if child_nav_item.isSelected()>
                                                            <#assign is_nav_child_selected=true />
                                                        </#if>
                                                        <div nav-url="${child_nav_item.getRegularURL()}" nav-target="${child_nav_item.getTarget()}" nav-name="${child_nav_item.getName()}" class="nav-child-item <#if child_nav_item.hasBrowsableChildren()> has-child-2</#if>">
                                                            <a class="nav-link<#if is_nav_child_selected> active</#if>"
                                                                aria-labelledby="layout_${child_nav_item.getLayoutId()}"
                                                                href="<#if child_nav_item.hasBrowsableChildren()>javascript:void(0)<#else>${child_nav_item.getURL()}</#if>"
                                                                ${child_nav_item.getTarget()}
                                                                role="menuitem">
                                                                <span style="font-size: 16px">${child_nav_item.getName()}</span>
                                                            </a>
                                                            <#if child_nav_item.hasBrowsableChildren()>
                                                                <div class="child-nav-2">
                                                                    <#foreach child_lev2_nav_item in child_nav_item.getBrowsableChildren()>
                                                                        <#assign is_nav_child2_selected=false />
                                                                        <#if child_lev2_nav_item.isSelected()>
                                                                            <#assign is_nav_child2_selected=true />
                                                                        </#if>
                                                                        <div nav-url="${child_lev2_nav_item.getRegularURL()}"
                                                                            nav-target="${child_lev2_nav_item.getTarget()}"
                                                                            nav-name="${child_lev2_nav_item.getName()}"
                                                                            class="nav-child-item">
                                                                            <a class="nav-link <#if is_nav_child2_selected> active</#if>"
                                                                                aria-labelledby="layout_${child_lev2_nav_item.getLayoutId()}"
                                                                                href="${child_lev2_nav_item.getURL()}"
                                                                                ${child_lev2_nav_item.getTarget()}
                                                                                role="menuitem">
                                                                                <span style="font-size: 16px">${child_lev2_nav_item.getName()}</span>
                                                                            </a>
                                                                        </div>
                                                                    </#foreach>
                                                                </div>
                                                            </#if>
                                                        </div>
                                                    </#foreach>
                                                </div>
                                            </#if>
                                        </div>
                                    </#if>
                                </li>
                            </#if>
                        </#foreach>
                        <li class="nav-item site-wrap" id="site-wrap">
                            <a href="javascript:void(0)"
                                class="nav-link dropdown-site d-flex flex-center"
                                data-target="site-wrap" aria-labelledby="dropdown_locale"
                                id="dropdown_locale" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                            </a>
                            <div class="site-menu dropdown-menu child-nav" id="site-content"
                                aria-labelledby="dropdown_locale">
                                <div class="site-item-wrap site-item"
                                    data-href="/c/portal/update_language?p_l_id=${plId}&redirect=${themeDisplay.getURLCurrent()}&languageId=vi_VN"
                                    data-lang="vi">
                                    <span class="nav-site-icon">
                                        <img class="img-fluid" src="/documents/20126/960997/vietnam.png" width="25px" />
                                    </span>
                                    <div class="nav-site-lang">VIE</div>
                                </div>
                                <div class="site-item-wrap site-item"
                                    data-href="/c/portal/update_language?p_l_id=${plId}&redirect=${themeDisplay.getURLCurrent()}&languageId=en_US"
                                    data-lang="en">
                                    <span class="nav-site-icon"><img class="img-fluid"
                                            src="/documents/20126/960997/united-states.png"
                                            width="25px" /></span>
                                    <div class="nav-site-lang">ENG</div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item nav-item-btn flex-center">
                            <a class="nav-link menu-main btn btn-default button-login"
                                aria-labelledby="layout_908828"
                                href="https://my.vngcloud.vn<#if themeDisplay.getLanguageId()=='vi_VN'>?hl=vi<#else>?hl=en</#if>"
                                target="_blank" role="menuitem">
                                <#if themeDisplay.getLanguageId()=='vi_VN'>????ng nh???p<#else>Login</#if>
                            </a>
                        </li>
                    </ul>
                    <div class="copyright">?? VNG Cloud 2021</div>
                </nav>
                <div class="options-menu d-flex align-items-center">
                    <div class="menu-right">
                        <ul class="list-unstyled m-0 p-0">
                            <#assign journalArticleLocalService=serviceLocator.findService("com.liferay.journal.service.JournalArticleLocalService")>
                            <#assign assetEntryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetEntryLocalService")>
                            <#assign catLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")>
                            <#assign promotionsArticle=journalArticleLocalService.getArticles(groupId, 1664034)>
                            <#assign promotionsArticle=promotionsArticle?sort_by('createDate')?reverse>
                            <#assign exceptCat=['New', 'new' ]>
                            <#assign promotionId=''>
                            <#assign countPromotion=0>
                            <#assign arrPromotion={}>
                            <#assign index=0>
                            <#list promotionsArticle as promotion>
                                <#assign nextArticleResourcePrimKey=promotion.getResourcePrimKey()>
                                <#assign nextArticleAssetEntry=assetEntryLocalService.getEntry("com.liferay.journal.model.JournalArticle", nextArticleResourcePrimKey)>
                                <#assign nextArticleAssetEntryEntryId=nextArticleAssetEntry.getEntryId()>
                                <#assign nextCategories=catLocalService.getEntryCategories(nextArticleAssetEntryEntryId)>
                                <#assign allowed=false>
                                <#if nextCategories?size gt 0>
                                    <#list nextCategories as cat>
                                        <#if exceptCat?seq_index_of(cat.getName()) gte 0>
                                            <#assign allowed=true>
                                            <#break>
                                        </#if>
                                    </#list>
                                </#if>
                                <#if allowed>
                                    <#if !promotion?has_next || promotionsArticle[promotion?index + 1].getArticleId() !=promotion.getArticleId()>
                                        <#assign countPromotion++>
                                        <#assign document=saxReaderUtil.read(promotion.getContent())>
                                        <#assign rootElementNext=document.getRootElement()>
                                        <#assign xPathTitle=saxReaderUtil.createXPath("dynamic-element[@name='title']/dynamic-content[@language-id='${locale}']")>
                                        <#assign title=xPathTitle.selectSingleNode(rootElementNext).getStringValue()>
                                        <#assign xPathDesc=saxReaderUtil.createXPath("dynamic-element[@name='Description' ]/dynamic-content[@language-id='${locale}']")>
                                        <#assign desc=xPathDesc.selectSingleNode(rootElementNext).getStringValue()>
                                        <#assign xPathUrl=saxReaderUtil.createXPath("dynamic-element[@name='urlDetail' ]/dynamic-content[@language-id='${locale}']")>
                                        <#assign url=xPathUrl.selectSingleNode(rootElementNext).getStringValue()>
                                        <#assign tmp={"title": title, "desc" : desc, "url" : url}>
                                        <#assign arrPromotion=arrPromotion + {index: tmp}>
                                        <#assign index=index + 1>
                                    </#if>
                                </#if>
                            </#list>
                            <li class="dropdown-promotion position-relative">
                                <a href="javascript:void(0)"
                                    class="flex-center position-relative"
                                    aria-labelledby="dropdown_promotion"
                                    id="dropdown_promotion"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false">
                                    <img class="icon-promotion lazyload"
                                        data-src="/documents/20126/906379/icon-notify-promotion.png">
                                    <#if index gt 0>
                                        <div class="badge badge-danger number promotion-number flex-center"
                                            id="promotion-number">
                                            ${index}
                                        </div>
                                    </#if>
                                </a>
                                <ul class="dropdown-menu dropdown-ext"
                                    aria-labelledby="dropdown_promotion">
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<style type="text/css">
    .v-nav-show .vng-cloud-logo-main,
    .vng-cloud-logo-sub {
        display: none
    }

    #page_header .v-header:not(.mobile-nav) .navbar {
        -webkit-transition: opacity .3s, visibility 0s .3s, -webkit-transform .3s ease-out;
        transition: opacity .3s, visibility 0s .3s, -webkit-transform .3s ease-out;
        transition: opacity .3s, transform .3s ease-out, visibility 0s .3s;
        transition: opacity .3s, transform .3s ease-out, visibility 0s .3s, -webkit-transform .3s ease-out;
        -webkit-transition-delay: .362s, .362s;
        transition-delay: .362s, .362s
    }

    #page_header .v-header.v-hidden .v-navbar {
        opacity: 0;
        visibility: hidden;
        transform: translate3d(0, calc(-1 * var(--height)), 0)
    }

    #page_header .v-header.v-nav-show:not(.mobile-nav) .v-navbar {
        transform: translate3d(0, 0, 0);
        opacity: 1;
        visibility: visible
    }

    .v-header .nav-link.menu-main {
        text-transform: uppercase
    }

    .v-header .navbar .nav-item.active .menu-main::after,
    .v-header .navbar .nav-item:not(.show):hover .menu-main:not(.button-login)::after,
    .v-header .navbar .nav-item:hover .selected-lang::after {
        opacity: 1
    }

    .v-header .navbar-brand {
        width: 130px;
        max-width: inherit
    }

    .menu-nav {
        margin-left: auto;
        align-items: unset !important;
        position: relative;
    }

    .v-header:not(.v-nav-show) .navbar-fixed-top,
    .v-header.v-nav-mask .navbar-fixed-top {
        position: absolute
    }

    .navbar-fixed-top {
        top: 0;
        right: 0;
        left: 0;
        z-index: 1030;
        -webkit-transition: background-color .3s ease-in-out;
        -moz-transition: background-color .3s ease-in-out;
        -o-transition: background-color .3s ease-in-out;
        transition: background-color .3s ease-in-out
    }

    .site-wrap .dropdown-site {
        text-transform: uppercase
    }

    .v-header .nav-link.menu-main:focus {
        outline: 0
    }

    .v-header .nav-link.menu-main:not(.button-login) {
        padding: 20px
    }

    .v-header .nav-item.active .menu-main {
        font-family: 'Sarabun Bold', sans-serif;
    }

    .v-header .button-login {
        background: var(--vng-orange);
        border-color: var(--vng-orange);
        padding: 2px 30px;
        border-radius: 0
    }

    ul.menu-nav .nav-item .child-nav {
        display: block;
        left: -2000px;
        opacity: 0;
        visibility: hidden;
        -webkit-transition: opacity .4s ease;
        -moz-transition: opacity .4s ease;
        -o-transition: opacity .4s ease;
        transition: opacity .4s ease
    }

    .v-navbar .dropdown-menu {
        border: 0;
        margin: 0;
        padding: 0;
        border-radius: 0;
        overflow: inherit
    }

    .v-header .nav-item .child-nav__full-screen {
        position: fixed;
        right: auto;
        height: auto;
        z-index: 10;
    }

    .v-header .nav-item .child-nav__full-screen.dropdown-menu {
        max-height: none;
        background-color: #EAEBEE;
    }

    .menu-nav .nav-item .child-nav .nav-child-item a {
        padding: 10px 15px
    }

    .nav-item .child-nav .nav-child-item a {
        color: var(--text-body)
    }

    .nav-item.has-child .menu-main::before,
    .site-wrap .dropdown-site .selected-lang::before {
        content: "\f107";
        position: absolute;
        font-family: fontawesome-alloy;
        -webkit-transition: transform .3s;
        -moz-transition: transform .3s;
        -o-transition: transform .3s;
        transition: transform .3s
    }

    .nav-item.has-child .menu-main::before {
        right: 5px
    }

    .site-wrap .dropdown-site .selected-lang::before {
        right: -5px
    }

    .site-wrap .dropdown-site.show .selected-lang::before {
        transform: rotate(-90deg)
    }

    .nav-item.has-child .child-nav__full-screen .nav-child-item .nav-link .description {
        font-size: 13px;
        padding-bottom: 10px
    }

    .nav-item.has-child .child-nav .nav-child-item:hover>a.nav-link {
        color: var(--vng-orange);
    }

    .v-header:not(.v-nav-show) .navbar-toggle .icon-bar {
        background-color: #fff
    }

    .navbar-toggle .icon-bar {
        display: block;
        width: 22px;
        height: 2px;
        border-radius: 1px
    }

    button.navbar-toggle.pull-left {
        margin-left: 15px
    }

    .pagination-bar .pagination li.active a {
        z-index: auto !important
    }

    #page_header .v-header.v-nav-show .v-navbar {
        background-color: #fff;
        box-shadow: 0 3px 3px rgba(0, 0, 0, 0.1)
    }

    #page_header .v-header.v-header-fixed .v-navbar {
        position: fixed
    }

    .v-nav-show .vng-cloud-logo-sub {
        display: block
    }

    .main-locale-flag {
        width: 25px
    }

    .site-wrap .dropdown-site {
        padding: 20px
    }

    .site-wrap .selected-lang {
        position: relative
    }

    .site-menu {
        background: var(--bg-sub-menu);
        min-width: 120px
    }

    .site-item-wrap {
        display: flex;
        align-items: center;
        padding: 5px 10px;
        cursor: pointer
    }

    .nav-site-icon {
        width: 20px
    }

    .nav-site-lang {
        padding-left: 5px
    }

    .site-wrap .selected-lang {
        padding: 0 10px 0 5px
    }

    .site-item-wrap.selected {
        cursor: not-allowed
    }

    .navbar-header::after {
        content: none
    }

    .site-wrap.show .selected-lang::before {
        transform: rotate(-90deg)
    }

    .nav-child-item.has-child-2 .child-nav-2 {
        padding: 5px 0
    }

    .navbar-toggle img {
        border-radius: 0 !important
    }

    .nav-child-item.has-child-2:hover .child-nav-2 {
        display: block;
        right: auto !important;
        min-width: 300px !important
    }

    .selected-lang::after {
        bottom: 0;
        left: 5px;
        right: -10px
    }

    .site-item-wrap.site-item:hover {
        color: var(--vng-orange)
    }

    .v-header .button-login:hover {
        background: #dc5c23;
        border-color: #dc5c23;
        text-decoration: underline
    }

    .v-header.v-nav-show .button-login:hover {
        background: var(--dark-blue-2-200) !important;
        border-color: var(--dark-blue-2-200) !important
    }

    .dropdown-promotion .dropdown-menu a {
        padding: 10px
    }

    .dropdown-promotion .dropdown-menu a:active {
        background-color: rgba(84, 164, 255, .19);
        color: #16181b;
    }

    .dropdown-promotion .dropdown-menu a:focus-visible {
        outline: none;
    }

    .icon-promotion {
        width: 25px;
        animation-name: gift;
        animation-duration: .8s;
        animation-delay: 1.5s;
        animation-iteration-count: 5
    }

    .dropdown-promotion .dropdown-menu img {
        z-index: 1
    }

    .dropdown-ext .promotion-desc {
        padding-left: 40px;
        padding-bottom: 10px
    }

    .dropdown-ext .promotion-desc>div {
        font-size: 15px;
        line-height: 20px;
        margin-top: -5px
    }

    .dropdown-ext .promotion-desc>div:hover {
        color: var(--dark-blue-2)
    }

    .dropdown-ext .promotion-desc>p {
        color: #8f9294;
        font-size: 13px;
        margin-bottom: 0;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden
    }

    .promotion-icon {
        width: 30px;
        height: 30px
    }

    .promotion-icon::after {
        content: '';
        position: absolute;
        background-color: #56a4ff;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        border-radius: 50%
    }

    .dropdown-ext__header {
        padding: 1rem 15px
    }

    .dropdown-ext__header .search-promotion i {
        color: #3860c4;
        cursor: pointer
    }

    .dropdown-ext__header .search-promotion.show input {
        width: 100px;
        border: 1px solid #eee
    }

    .dropdown-ext__header .search-promotion input {
        outline: 0;
        width: 0;
        height: auto;
        margin: 0;
        border: 0;
        padding: 0;
        -webkit-transition: width .4s, right .3s, border-radius .2s;
        -moz-transition: width .4s, right .3s, border-radius .2s;
        -o-transition: width .4s, right .3s, border-radius .2s;
        transition: width .4s, right .3s, border-radius .2s
    }

    .v-header .dropdown-promotion .dropdown-menu {
        left: auto;
        right: 0;
        top: 100%;
        min-width: 300px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        overflow-y: auto
    }

    .dropdown-promotion .number {
        position: absolute;
        border-radius: 50%;
        right: -8px;
        top: -8px;
        font-size: 10px
    }

    .menu-prod-wrapper .tab-content {
        overflow: auto;
        background-color: #f5f6f6;
        border-top: 1px solid #eaebee;
    }

    .menu-prod-wrapper .tab-content>.active {
        display: flex;
    }

    .menu-prod-wrapper .tab-pane {
        width: 100%;
        max-width: 95%;
        margin: 0 auto;
        padding: 15px;
    }

    .prod-group .nav-link {
        border-radius: 0;
        color: #000;
        font-size: 18px;
    }

    .prod-group>.nav-link:not(.active) {
        padding-top: .5rem !important;
    }

    .prod-group .category:not(.show) .category-desc {
        padding: 0 !important;
    }

    .prod-group .category .category-desc img {
        width: 90px;
        height: auto;
    }

    .prod-group .category:not(:last-child)::before {
        content: '';
        position: absolute;
        left: 1rem;
        right: 0;
        bottom: -1rem;
        height: 1px;
        background-color: rgba(57, 81, 159, 0.3);
    }

    .prod-group .nav-link:hover {
        color: var(--vng-orange);
    }

    .prod-group .nav-link.active {
        color: var(--vng-orange);
        background-color: transparent;
        font-family: 'Sarabun Bold', sans-serif;
    }

    .prod-category .category-name {
        color: #39519F;
        font-size: 18px;
        margin-bottom: .5rem;
        font-family: 'Sarabun Bold', sans-serif;
    }

    .prod-category.inline {
        display: flex;
        flex-direction: column;
    }

    .prod-category.inline .category-name {
        flex-shrink: 0;
        height: 25px
    }

    .prod-category.inline .prod-block__wrapper {
        flex-grow: 1;
    }

    .prod-category.inline .prod-block {
        height: 100%;
    }

    .prod-category.inline .prod-block:not(:first-child) {
        margin-top: 20px;
    }

    .prod-category .prod-block {
        background-color: #fff;
        box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 3px;
        border-radius: 9px;
        position: relative;
        transition: transform 1s cubic-bezier(.08, .52, .52, 1);
    }

    .prod-category .prod-block.active .nav-link .title {
        color: var(--vng-orange);
        font-family: 'Sarabun Bold', sans-serif;
        font-size: 18px;
        line-height: 1.4;
    }

    .prod-category {
        margin-bottom: 1rem;
    }

    .prod-category .prod-block .title {
        color: #000;
        position: relative;
    }

    .prod-category .prod-block .description {
        font-family: 'Sarabun Light', sans-serif;
        color: #585858;
        font-size: 15px;
        padding-top: .25rem;
        position: relative;
    }

    .prod-category .prod-block:hover {
        transform: translateY(-5px);
        box-shadow: rgba(149, 157, 165, 0.2) 0px 2px 10px;
    }

    .prod-category .prod-block:hover .title {
        color: var(--vng-orange);
        font-weight: 600;
    }

    .menu-prod-wrapper .tab-content::-webkit-scrollbar {
        width: 10px;
    }

    .menu-prod-wrapper .tab-content::-webkit-scrollbar-track {
        background-color: #f5f6f6;
    }

    .menu-prod-wrapper .tab-content::-webkit-scrollbar-thumb {
        border-radius: 5px;
        background-color: #d7d7d7;
    }

    .fancy-img {
        cursor: zoom-in
    }

    .fancybox-thumbs__list {
        display: flex;
        justify-content: center;
        width: 100% !important
    }

    @media(max-width:768px) {
        .fancybox-thumbs {
            width: 100% !important;
            left: 0;
            top: unset !important
        }

        .fancybox-show-thumbs .fancybox-inner {
            right: 0 !important
        }

        .fancybox-caption {
            bottom: 90px
        }
    }

    @media(min-width:800px) {
        .fancybox-thumbs {
            top: auto;
            width: auto;
            bottom: 0;
            left: 0;
            right: 0;
            height: 95px;
            padding: 10px 10px 5px 10px;
            box-sizing: border-box;
            background: rgba(0, 0, 0, 0.3)
        }

        .fancybox-show-thumbs .fancybox-inner {
            right: 0;
            bottom: 95px
        }
    }

    @keyframes gift {
        25% {
            -webkit-transform: rotate(10deg);
            -ms-transform: rotate(10deg);
            -o-transform: rotate(10deg);
            transform: rotate(10deg)
        }

        50% {
            -webkit-transform: rotate(-10deg);
            -ms-transform: rotate(-10deg);
            -o-transform: rotate(-10deg);
            transform: rotate(-10deg)
        }

        75% {
            -webkit-transform: rotate(10deg);
            -ms-transform: rotate(10deg);
            -o-transform: rotate(10deg);
            transform: rotate(10deg)
        }

        100% {
            -webkit-transform: rotate(-10deg);
            -ms-transform: rotate(-10deg);
            -o-transform: rotate(-10deg);
            transform: rotate(-10deg)
        }
    }

    @media (min-width: 1056px) {
        .navbar-header {
            float: inherit !important;
        }

        ul.menu-nav .nav-item.show .child-nav__full-screen {
            left: 5% !important;
        }

        .prod-category.inline:nth-child(1) .prod-block__wrapper {
            margin-right: calc(40px / 3);
        }

        .prod-category.inline:nth-child(2)>div {
            margin-left: calc(40px / 6);
            margin-right: calc(40px / 6);
        }

        .prod-category.inline:nth-child(3)>div {
            margin-left: calc(40px / 3);
        }
    }

    @media(min-width:992px) {
        .v-header .navbar-brand {
            width: 150px
        }

        .v-header .nav-item.show .nav-link.menu-main {
            background-color: #f5f6f6
        }

        .toggle-logo {
            display: none
        }

        ul.menu-nav .nav-item.show .child-nav__full-screen {
            top: var(--height);
        }

        .prod-category:not(.inline) .prod-block__wrapper {
            grid-template-columns: repeat(3, 1fr);
        }

        .v-header.v-nav-show .nav-link.menu-main:not(.button-login) {
            color: var(--dark-blue-2)
        }

        .v-header.v-nav-show .nav-item .menu-main::after {
            background-color: var(--dark-blue-2)
        }

        .v-header .nav-link.menu-main,
        .site-wrap .dropdown-site {
            letter-spacing: -1px;
            line-height: 26px;
            font-size: 16px
        }

        .nav-item .child-nav-2 a.nav-link {
            padding-left: 25px
        }

        .v-header .navbar .nav-item .menu-main::after {
            content: ' ';
            position: absolute;
            height: 2px;
            background-color: #fff;
            opacity: 0;
            -webkit-transition: opacity .3s;
            -moz-transition: opacity .3s;
            -o-transition: opacity .3s;
            -ms-transition: opacity .3s;
            transition: opacity .3s
        }

        .v-header.v-nav-show .button-login {
            background: var(--dark-blue-2);
            border-color: var(--dark-blue-2)
        }

        .v-header.v-nav-show .navbar .nav-item .menu-main::after {
            background-color: var(--dark-blue-2)
        }

        .v-navbar .site-menu.dropdown-menu::after {
            left: 30px
        }

        .v-header .navbar-nav .nav-item.nav-item-btn {
            padding-left: 20px
        }

        .navigation-group {
            display: flex;
            margin-left: auto;
        }

        .navbar-fixed-top .navbar-collapse {
            display: flex
        }

        ul.menu-nav .nav-item.show .dropdown-menu {
            opacity: 1;
            left: 0;
            visibility: visible;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.08);
        }

        ul.menu-nav .nav-item.show .dropdown-ext {
            top: calc(100% - 10px)
        }

        .nav-child-item.has-child-2 .child-nav-2 {
            background-color: #f5f6f6;
            padding: 5px 0;
            min-width: 300px;
            position: absolute;
            top: 0;
            left: 100%;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.08);
        }

        .v-header ul.menu-nav .nav-item.show .menu-main::before {
            transform: rotate(-90deg)
        }

        .v-header:not(.v-nav-show):not(.v-nav-mask) .site-wrap .dropdown-site,
        .v-header:not(.v-nav-show):not(.v-nav-mask) .nav-link.menu-main {
            color: #fff
        }

        .nav-item.has-child .child-nav {
            background-color: #f5f6f6;
            min-width: 300px
        }

        .site-wrap .dropdown-site .selected-lang::before {
            right: auto;
            left: 100%
        }

        .mobile-g-btn {
            display: none !important
        }

        .nav-item .child-nav:not(.child-nav__full-screen) .nav-child-item a.active {
            color: var(--vng-orange) !important
        }

        .nav-child-item.has-child-2:hover {
            color: var(--vng-orange) !important
        }

        .nav-child-item.has-child-2:hover .nav-link::after {
            transform: rotate(0)
        }

        .v-header .dropdown-promotion .dropdown-menu {
            top: calc(100% - 10px)
        }

        .v-header .menu-right ul>li {
            padding: 20px
        }

        .nav-child-item.has-child-2>.nav-link::after {
            transform: rotate(90deg);
            padding-left: 0;
            -webkit-transition: transform .3s;
            -moz-transition: transform .3s;
            -o-transition: transform .3s;
            -ms-transition: transform .3s;
            transition: transform .3s
        }

        .v-header .navbar .nav-item .menu-main::after {
            bottom: 20px;
            left: 20px;
            right: 20px
        }

        .menu-prod-wrapper .tab-content {
            height: calc(100vh - var(--height) - 30px);
            max-height: calc(100vh - var(--height) - 30px);
        }

        .prod-group {
            width: 430px;
            min-width: 430px;
        }

        .prod-group .category .category-desc .desc {
            padding-left: 30px;
        }

        .copyright {
            display: none;
        }

        .prod-group .category .category-desc .desc::before {
            content: '';
            position: absolute;
            left: 15px;
            top: 5px;
            bottom: 5px;
            width: 1px;
            background-color: rgba(239, 234, 234, 1);
        }
    }

    @media (min-width: 768px) {
        .prod-category:not(.inline) .prod-block__wrapper {
            display: grid;
            gap: 20px;
        }

        .menu-prod-wrapper {
            display: flex;
            align-items: flex-start;
        }

        .prod-group .nav-link {
            padding-bottom: 0.5rem !important;
        }

        .prod-group .category .category-desc {
            opacity: 0;
            visibility: hidden;
            max-height: 0;
            transition: opacity .3s, max-height .3s cubic-bezier(.08, .52, .52, 1);
        }

        .prod-group .category.show {
            background-color: #fff;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 20px;
            border-radius: 5px;
        }

        .prod-group .category.show .category-desc {
            max-height: 1000px;
            opacity: 1;
            visibility: visible;
        }

        .prod-group .category .category-desc .desc {
            font-size: 15px;
        }

        .prod-category .prod-block::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border: 1.5px solid #fff;
            border-radius: inherit;
        }

        .prod-category .prod-block.active::before {
            border-color: var(--vng-orange);
        }
    }

    @media(max-width:991.98px) {
        .menu-nav {
            flex-wrap: nowrap;
            margin-top: 60px
        }

        .mobile-g-btn .active-menu {
            color: #fff;
            font-weight: 600
        }

        .v-header.v-nav-show .mobile-g-btn .active-menu {
            color: var(--dark-blue-2)
        }

        #page_header .navbar .navbar-collapse .toggle-logo {
            position: absolute;
            left: 10px;
            top: 5px;
            opacity: 0;
            visibility: hidden;
            transform: translate3d(0, -50px, 0);
            -webkit-transition: opacity 350ms, visibility 0s 350ms, -webkit-transform 350ms ease-out;
            transition: opacity 350ms, visibility 0s 350ms, -webkit-transform 350ms ease-out;
            transition: opacity 350ms, transform 350ms ease-out, visibility 0s 350ms;
            transition: opacity 350ms, transform 350ms ease-out, visibility 0s 350ms, -webkit-transform 350ms ease-out;
            -webkit-transition-delay: .262s, .262s;
            transition-delay: .262s, .262s
        }

        #page_header .navbar .navbar-collapse .toggle-logo img {
            max-height: 50px
        }

        .mobile-g-btn .navbar-toggle {
            cursor: pointer;
            margin-right: 0;
            padding: 0;
            border-radius: 0
        }

        .navbar-header {
            width: 100%
        }

        #page_header .navbar {
            padding: 10px 0
        }

        .v-navbar .navbar-collapse {
            position: fixed;
            top: 0;
            bottom: 0;
            right: 0;
            background-color: #fff;
            -webkit-transition: left .3s;
            -moz-transition: left .3s;
            -o-transition: left .3s;
            -ms-transition: left .3s;
            transition: left .3s;
            z-index: 1000;
            height: 100vh
        }

        #page_header .navbar .navbar-collapse .navbar-toggle,
        .navbar-nav .nav-item {
            opacity: 0;
            visibility: hidden;
            -webkit-transition: opacity 450ms, visibility 0s 450ms, -webkit-transform 450ms ease-out;
            transition: opacity 450ms, visibility 0s 350ms, -webkit-transform 450ms ease-out;
            transition: opacity 450ms, transform 450ms ease-out, visibility 0s 450ms;
            transition: opacity 450ms, transform 450ms ease-out, visibility 0s 450ms, -webkit-transform 450ms ease-out;
            -webkit-transition-delay: .362s, .362s;
            transition-delay: .362s, .362s
        }

        #page_header .navbar .navbar-collapse .navbar-toggle {
            -webkit-transform: translate3d(10px, 0, 0);
            transform: translate3d(10px, 0, 0);
            position: absolute;
            right: 10px;
            top: 10px;
            margin-right: 0;
            cursor: pointer;
            display: block
        }

        .navbar-nav .nav-item {
            -webkit-transform: translate3d(-100px, 0, 0);
            transform: translate3d(-100px, 0, 0)
        }

        #page_header .navbar .navbar-collapse.show .navbar-nav .nav-item,
        #page_header .navbar .navbar-collapse.show .navbar-toggle,
        #page_header .navbar .navbar-collapse.show .toggle-logo {
            opacity: 1;
            visibility: visible;
            transform: translate3d(0, 0, 0);
            -webkit-transform: translate3d(0, 0, 0)
        }

        #page_header .navbar .navbar-collapse .navbar-toggle svg {
            -webkit-transform: rotate(180deg);
            transform: rotate(180deg);
            -webkit-transition: -webkit-transform 450ms ease-out;
            transition: -webkit-transform 450ms ease-out;
            transition: transform 450ms ease-out;
            transition: transform 450ms ease-out, -webkit-transform 35450ms0ms ease-out
        }

        .nav-link.menu-main:not(.button-login),
        .nav-link.dropdown-site {
            color: #484848;
        }

        .v-header .nav-item.active .menu-main:not(.button-login),
        .site-item-wrap.selected,
        .v-header .nav-item:not(.active).has-child.show .menu-main,
        .v-header .site-wrap.show .selected-lang {
            color: var(--vng-orange)
        }

        .v-header .nav-item:not(.active).has-child.show .menu-main,
        .v-header .site-wrap.show .selected-lang {
            font-weight: 700
        }

        .menu-nav .nav-item .child-nav:not(.child-nav__full-screen) .nav-child-item a,
        .site-item-wrap {
            padding-left: 30px
        }

        .site-item-wrap {
            padding-top: 10px;
            padding-right: 15px;
            padding-bottom: 10px
        }

        .v-header .navbar-nav .nav-item.nav-item-btn {
            padding: 20px
        }

        .v-header ul.menu-nav .nav-item .child-nav {
            opacity: 0;
            top: 0;
            left: 0;
            max-height: 0;
            -webkit-transition: max-height .5s;
            -moz-transition: max-height .5s;
            -o-transition: max-height .5s;
            transition: max-height .5s;
            z-index: -1;
            position: relative
        }

        .v-header .nav-child-item.has-child-2 .child-nav-2 {
            left: 0;
            background-color: transparent;
            position: relative;
            padding-left: 15px
        }

        .nav-child-item.has-child-2 .nav-link>span {
            padding-right: 10px
        }

        .v-header ul.menu-nav .nav-item.show .child-nav {
            opacity: 1;
            visibility: visible;
            max-height: 1000px;
            z-index: 1
        }

        .v-header ul.menu-nav .nav-item.show .child-nav__full-screen {
            margin-bottom: 10px
        }

        .v-header ul.menu-nav .nav-item.show .child-nav__full-screen .row {
            padding-left: 0;
            padding-right: 0;
        }

        .v-header .nav-item.has-child .child-nav__full-screen .nav-child-item .nav-link .description {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            padding-bottom: 0
        }

        .v-header .nav-link.menu-main,
        .site-wrap .dropdown-site {
            font-size: 18px;
            font-family: 'Sarabun Bold', sans-serif;
        }

        .site-wrap .dropdown-site,
        .v-header .navbar-nav .nav-item.nav-item-btn {
            justify-content: flex-start
        }

        .v-header .nav-item>.nav-link:not(.button-login),
        .v-header .navbar-nav .nav-item.nav-item-btn {
            padding: 10px 20px
        }

        .v-navbar .navbar-collapse.show {
            left: 0
        }

        .v-header.v-nav-show .pos-icon,
        .v-header .nav-child-item.has-child-2 .child-nav-2 {
            display: block
        }

        .v-header .pos-icon,
        .v-header.v-nav-show .abs-icon {
            display: none
        }

        .site-wrap .dropdown-site .selected-lang::before {
            right: -10px
        }

        .v-header ul.menu-nav .nav-item.show .nav-link::before {
            transform: rotate(180deg)
        }

        .site-wrap .dropdown-site:focus {
            outline: 0
        }

        .nav-item.has-child .menu-main::before {
            right: 10px
        }

        .v-header .dropdown-promotion .dropdown-menu {
            margin-top: 10px
        }

        .v-navbar .cloud-container {
            position: relative;
        }

        .mobile-g-btn,
        .options-menu {
            position: absolute;
        }

        .options-menu {
            right: 23px;
            top: 5px;
        }

        .navbar-collapse .navbar-nav {
            background-color: #fff;
            z-index: 1;
        }

        .copyright {
            position: absolute;
            left: 20px;
            bottom: 10px;
            color: #484848;
        }

        .nav-item .menu-main:not(.button-login)::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 3px;
            height: 0;
            background-color: var(--vng-orange);
            -webkit-transition: height .3s;
            -moz-transition: height .3s;
            -ms-transition: height .3s;
            -o-transition: height .3s;
            transition: height .3s;
        }

        .nav-item.has-child .child-nav {
            background-color: #f4f4f4;
        }

        .nav-item.show .menu-main:not(.button-login)::after {
            height: 100%;
        }

        .nav-child-item.has-child-2>.nav-link::after {
            content: none;
        }

        .child-nav.dropdown-menu {
            max-width: none !important;
        }

        .nav-item .child-nav .nav-link.active {
            color: var(--vng-orange)
        }

        .child-nav-2 .nav-link::before {
            content: '';
            position: absolute;
            left: 15px;
            top: 25px;
            width: 14px;
            height: 1px;
            background-color: #aaa;
        }

        .child-nav-2::before {
            content: '';
            position: absolute;
            left: 30px;
            top: -5px;
            bottom: 23px;
            width: 1px;
            background-color: #aaa;
        }

        .menu-prod-wrapper .tab-content {
            height: calc(100vh - 420px);
            ;
            max-height: calc(100vh - 420px);
            ;
        }
    }

    @media(min-width:576px) and (max-width:1055.98px) {
        .menu-prod-wrapper .cloud-container {
            max-width: 100% !important;
        }
    }

    @media (min-width: 992px) and (max-width: 1055.98px) {
        .menu-nav {
            margin-right: auto;
        }

        .v-header .nav-item .child-nav__full-screen {
            max-width: 100%;
        }

        ul.menu-nav .nav-item.show .child-nav__full-screen {
            top: calc(var(--height) + 10px);
        }

        .v-navbar>.cloud-container {
            justify-content: center;
            max-width: 100%;
            padding: 0;
            display: block !important;
        }

        .v-navbar .navbar-header {
            padding-top: 10px;
        }

        .v-header.v-nav-show .navigation-group {
            box-shadow: 0 2px 3px rgba(0, 0, 0, 0.11);
            background-color: #fff;
        }

        .navigation-group {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .navigation-group .navbar-collapse {
            flex-basis: inherit;
            flex-grow: inherit;
        }

        #page_header .v-header.v-nav-show .v-navbar {
            box-shadow: none;
        }
    }

    @media (min-width: 768px) and (max-width: 1055.98px) {
        .navbar-header {
            float: inherit !important
        }

        .prod-category:not(.inline) .prod-block__wrapper {
            grid-template-columns: repeat(2, 1fr)
        }

        .prod-category.inline {
            max-width: 50%;
            flex: 0 0 50%;
        }

        .prod-category.inline:nth-child(1) .prod-block__wrapper {
            margin-right: 10px
        }

        .prod-category.inline:nth-child(2)>div {
            margin-left: 5px;
            margin-right: 5px;
        }

        .prod-category.inline:nth-child(3)>div {
            margin-left: 10px
        }
    }

    @media(min-width:768px) and (max-width:991.98px) {
        .menu-nav {
            margin-top: 80px;
            flex-direction: column !important;
        }

        #page_header .navbar .navbar-collapse .toggle-logo {
            left: 20px;
            top: 20px
        }

        #page_header .navbar .navbar-collapse .navbar-toggle {
            top: 25px
        }

        .v-header ul.menu-nav .nav-item.show .child-nav:not(.child-nav__full-screen) {
            padding-right: 20px
        }

        .nav-item.has-child .child-nav__full-screen .nav-child-item {
            max-width: 100%
        }

        .site-wrap .site-menu {
            left: auto;
            right: 0
        }

        .main-locale-flag {
            width: 30px
        }

        .v-navbar .navbar-collapse {
            left: -1000px;
        }

        .prod-group {
            width: 40%;
            flex-shrink: 0;
        }

        .prod-group .category.show .category-desc .img {
            text-align: center;
            margin-bottom: .5rem;
        }
    }

    @media (max-width: 767.98px) {
        .prod-group .nav-link {
            padding-bottom: 0 !important;
        }
    }

    @media(max-width:575.98px) {
        .mobile-g-btn .active-menu {
            display: none;
        }

        .v-navbar .navbar-collapse {
            left: -100%;
        }

        .v-navbar {
            height: 56px;
        }

        .menu-nav::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            background-color: #ddd;
            height: 1px;
        }

        .v-header ul.menu-nav .nav-item .child-nav,
        .v-navbar .navbar-collapse {
            overflow-y: auto;
            overflow-x: hidden;
        }

        .v-header ul.menu-nav .nav-item.show .child-nav__full-screen {
            max-height: 600px;
        }

        .menu-prod-wrapper .tab-content {
            display: none;
        }

        .prod-group .category>.nav-link,
        .prod-group .category .category-desc {
            padding: 0 0 .5rem .5rem !important;
        }

        .prod-group .category:not(.show) .category-desc {
            display: none
        }

        .prod-category {
            display: none;
        }

        .prod-group .category.show .prod-category {
            display: block;
            padding-top: .5rem;
        }

        .prod-category .prod-block {
            margin-bottom: 1rem;
        }

        .prod-group .category {
            margin-top: .5rem;
        }

        .prod-group .category:not(:last-child)::before {
            left: .5rem;
        }

        .prod-group .category-name.not-category {
            display: none;
        }
    }
</style>
<script type="text/javascript" async>
    var mapLang = {
        "vi_VN": {
            "label": "VIE",
            "name": "vi",
            "icon": "vietnam.png"
        },
        "en_US": {
            "label": "ENG",
            "name": "en",
            "icon": "united-states.png"
        }
    };
    initLang();

    function initLang() {
        let locale = "${themeDisplay.getLanguageId()}",
            currentLang = {},
            labelLocale = "VIE";
        if (mapLang.hasOwnProperty(locale)) {
            currentLang = mapLang[locale];
            if (Object.keys(currentLang).length > 0) {
                labelLocale = currentLang["label"];
                let flags = document.getElementsByClassName("dropdown-site");
                for (let index = 0; index < flags.length; index++) {
                    let target = flags[index].getAttribute("data-target");
                    flags[index].innerHTML = "\x3cdiv class\x3d'main-locale-flag'\x3e" +
                        "\x3cimg class\x3d'img-fluid main-locale-img' id\x3d'main-locale-img' src\x3d'https://vngcloud.vn/documents/20126/960997/" +
                        currentLang.icon + "'\x3e\x3c/div\x3e" +
                        "\x3cdiv class\x3d'selected-lang' data-target\x3d'" + target + "'\x3e" +
                        labelLocale + "\x3c/div\x3e"
                }
                let elements = $(".site-item-wrap");
                $.each(elements, function (i, obj) {
                    if (currentLang["name"] === obj.getAttribute("data-lang")) {
                        $(obj).addClass("selected");
                        $(obj).removeClass("site-item")
                    }
                })
            }
            let cookieLang = getCookie("lang");
            if (cookieLang == null) setCookie("lang", currentLang["name"], 1E4)
        }
    }

    function getCookie(e) {
        for (var a = e + "\x3d", n = document.cookie.split(";"), t = 0; t < n.length; t++) {
            for (var i = n[t];
                " " == i.charAt(0);) i = i.substring(1, i.length);
            if (0 == i.indexOf(a)) return i.substring(a.length, i.length)
        }
        return null
    }

    function setCookie(cname, cvalue, exdays) {
        var d = new Date;
        d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1E3);
        var expires = "expires\x3d" + d.toUTCString();
        document.cookie = cname + "\x3d" + cvalue + ";" + expires +
            ";path\x3d/;domain\x3d.vngcloud.vn"
    };
</script>
<script type="text/javascript" src="/o/vng-cloud-theme/js/wow_1_1_2.min.js" defer></script>
<script type="text/javascript">
    window.lazySizesConfig = window.lazySizesConfig || {};
    window.lazySizesConfig.customMedia = {
        '--small': '(max-width: 480px)',
        '--medium': '(max-width: 1599.98px)',
        '--large': '(min-width: 1600px)',
    };
</script>
<script type="text/javascript" defer>
    $(document).ready(function () {
        var wow = new WOW({
                boxClass: "wow",
                animateClass: "animated",
                offset: 0,
                mobile: true,
                live: true
            }),
            activeMenu = "${activeMenu}",
            pageFixedMenu = "${menuFixed?c}";
        wow.init();
        if (activeMenu == "" || ["trang ch\u1ee7", "home"].includes(activeMenu
                .toLowerCase())) activeMenu = "Menu";
        document.getElementById("active-menu").innerHTML = activeMenu;
        const navbar = document.getElementById('v-navbar'),
            vHeader = $(".v-header"),
            prodTab = document.querySelector("#prod-tab"),
            categoryItems = $(prodTab).find('a');
        var classAdd = "v-nav-show v-header-fixed",
            heightNavbar = handleResizeWindow(),
            lastSt = 0,
            arrDomain = ["/gioi-thieu-vng-cloud", "/about-us", "/our-history",
                "/lich-su", "/terms-and-conditions", "/commitment-to-quality-service",
                "/cam-ket-chat-luong-dich-vu", "/product/vcolo", "/lien-he", "/contact",
                "/contact-sales", "/blog", "/blog/", "/events", "/events/",
                "/blog-by-tag", "/events-by-tag", "/product/live-streaming",
                "/product/vcloudcam/"
            ],
            isMenuAbs = false;
        firstLoad();
        $(window).bind("scroll", function () {
            if (!vHeader.hasClass('mobile-nav')) {
                scrollWindow();
            }
        });
        $(window).bind("resize", function () {
            handleResizeWindow()
        });
        $(".menu-main").on('click', function (e) {
            if (!vHeader.hasClass('mobile-nav') && $(window).scrollTop() <
                100) {
                let parent = $(this).parent();
                if (isMenuAbs && parent.hasClass("has-child")) {
                    if (!parent.hasClass('show')) vHeader.addClass(
                        "v-nav-show v-nav-mask")
                    else vHeader.removeClass("v-nav-show v-nav-mask")
                }
                document.addEventListener('click', clickOutsiteMenu, true);
            }
        });
        $(document).on('click', '.v-header .dropdown-menu', function (e) {
            e.stopPropagation();
        });
        $('#prod-tab a.category-link').on('click', function (e) {
            e.preventDefault();
            categoryItems.removeClass("active show").parent().removeClass(
                "show");
            var self = $(this);
            setTimeout(function () {
                $(this).tab('show') && ($(this).parent().addClass(
                    "show"));
            }.bind(this), 300);
        });
        $(".navbar-toggle").on("click", function (e) {
            e.preventDefault();
            let dataTarget = $(this).attr("data-target");
            let target = document.getElementById(dataTarget);
            if (target) target.classList.toggle("show");
            vHeader[0].classList.toggle("mobile-nav");
            document.addEventListener('click', clickOutsiteNavigation, true);
        });
        $(".site-item").on("click", function (e) {
            e.preventDefault();
            setCookie("lang", $(this).attr("data-lang"), 1E4);
            let path = "${path}";
            if (path !== "" && path.indexOf("${friendlyURL}") < 0) {
                window.location.href = "${path}";
            } else {
                window.location.href = $(this).attr("data-href")
            }
        });

        function clickOutsiteMenu(selector) {
            let menuNav = document.getElementById('menu-nav');
            if (!menuNav || menuNav.contains(selector.target)) return;
            if ($(window).scrollTop() == 0) {
                vHeader.removeClass("v-header-fixed v-nav-mask");
                if (isMenuAbs) vHeader.removeClass("v-nav-show");
            }
            document.removeEventListener('click', clickOutsiteMenu, true);
        }

        function clickOutsiteNavigation(selector) {
            let navMenu = document.getElementById('navigation-menu');
            if (!navMenu || navMenu.contains(selector.target)) return;
            vHeader.removeClass('mobile-nav');
            $('#navigation-menu').removeClass('show');
            document.removeEventListener('click', clickOutsiteNavigation, true);
        }

        function firstLoad() {
            var uri = window.location.pathname.replace("/web/guest", ""),
                scrollTop = $(this).scrollTop();
            uri = uri.replace("/en/", "/");
            uri = uri.replace("/vi/", "/");
            isMenuAbs = checkMenuAbs(_.toLower(uri));
            if (scrollTop > 100) {
                vHeader.addClass(classAdd);
            } else if (!isMenuAbs) {
                vHeader.addClass("v-nav-show")
            }
        }

        function scrollWindow() {
            var uri = window.location.pathname.replace("/web/guest", ""),
                scrollTop = $(this).scrollTop();
            uri = uri.replace("/en/", "/");
            uri = uri.replace("/vi/", "/");
            vHeader.removeClass("v-nav-show v-header-fixed v-nav-mask v-hidden");
            checkScrollWindow(scrollTop);
        }

        function checkMenuAbs(url) {
            return _.find(arrDomain, (d) => {
                return d === url || url.indexOf(d) > -1
            }) === undefined && pageFixedMenu === "true"
        }

        function checkScrollWindow(scrollTop) {
            if (window.innerWidth < 576) {
                if (scrollTop > 100) vHeader.addClass("v-nav-show v-header-fixed");
                else {
                    vHeader.removeClass("v-header-fixed");
                    if (isMenuAbs) vHeader.removeClass("v-nav-show")
                    else vHeader.addClass("v-nav-show")
                }
            } else {
                let menuHasChild = $('#menu-nav').find('li[class*="has-child show"]');
                if (menuHasChild.length > 0) {
                    vHeader.addClass("v-nav-show");
                    if (scrollTop > 0) vHeader.addClass("v-header-fixed")
                    else if (isMenuAbs) vHeader.addClass("v-nav-mask")
                } else {
                    if (scrollTop > lastSt) {
                        vHeader.addClass("v-hidden");
                    } else if (scrollTop == 0) {
                        if (!isMenuAbs) vHeader.addClass("v-nav-show")
                    } else {
                        vHeader.addClass(classAdd);
                    }
                }
                lastSt = scrollTop
            }
        }

        function handleResizeWindow() {
            let heightMenu = navbar.offsetHeight;
            navbar.style.setProperty("--height", heightMenu + 'px');
            if (window.innerWidth > 1056) {
                vHeader[0].classList.remove('mobile-nav');
                $('#navigation-menu').removeClass('show')
            }
            changeProductMenu();
            return heightMenu;
        }

        function changeProductMenu() {
            if (window.innerWidth < 576) {
                const tabContent = document.querySelector("#prod-tabContent");
                if (tabContent) {
                    $.each(tabContent.children, function (index, tab) {
                        categoryItems.filter("[href='#" + tab.id + "']")
                        .parent().find('.category-desc').append(tab
                            .innerHTML);
                    })
                }
            } else {
                categoryItems.parent().find('.prod-category').remove();
            }
        }
    });
</script>
<script type="text/javascript" defer>
    $(document).ready(function (e) {
        "use strict";
        const promotionNumber = document.querySelector("#promotion-number");
        if (promotionNumber) {
            const dropdownPromotion = document.querySelector(".dropdown-promotion");
            var promotion = ${jsonFactoryUtil.looseSerializeDeep(arrPromotion)};
            if (dropdownPromotion) {
                var ddMenu = $(dropdownPromotion).find("ul");
                if (ddMenu.length > 0) {
                    ddMenu[0].innerHTML = appendPromotion(promotion);
                }
            }
        }

        function appendPromotion(data) {
            let result = "<li class='dropdown-ext__header d-flex align-items-center justify-content-between position-relative'>" +
                "<div class='primary-color'><b>Promotion <span>(${countPromotion})</span></b></div></li>";
            $.each(data, function (key, value) {
                result += "<li class='p-0'><a target='_blank' href='/promotions/" +
                    value['url'] + "' title='" + value['title'] + "'>" +
                    "<div class='promotion-icon flex-center position-absolute'><img class='img-fluid' src='/documents/20126/906379/icon-notify-promotion.png' width='25px'></div>" +
                    "<div class='promotion-desc'><div class='text-truncate'>" +
                    value['title'] + "</div><p>" + value['desc'] +
                    "</p></div></a></li>";
            });
            return result;
        }
    });
</script>