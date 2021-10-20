<#assign redirect= themeDisplay.getLayout().getExpandoBridge().getAttribute("Redirect")!"">
<#if redirect?has_content && redirect != ''>
<script type="text/javascript">
window.location.href= "${redirect}";
</script>
</#if>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5TJ4NZZ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<link rel="stylesheet" type="text/css" href="/o/vng-cloud-theme/css/animate.css">
<style type="text/css">
    @media (min-width: 1600px) {
        #page_header .navbar {
            max-width: 1200px;
        }
    }

    @media (min-width: 1200px) {
        .v-header .nav-item.has-child .menu-main {
            padding-left: 15px;
            padding-right: 25px;
        }

        .child-nav__full-screen {
            left: 5%;
        }

        .dropdown-promotion .number {
            right: 8px !important;
        }
    }

    @media (min-width: 1024px) {
        .v-header.scrolled {
            height: 60px;
        }

        .v-header .nav-item.active .menu-main {
            font-family: "Sarabun Bold", sans-serif;
        }

        .menu-nav {
            display: flex;
            align-items: center;
        }

        .menu-nav li.nav-item,
        .menu-main {
            height: 100%;
        }

        .v-header.scrolled .nav-link.menu-main {
            padding-top: 16px;
            padding-bottom: 16px;
        }

        .v-navbar .navbar-collapse {
            height: 100%;
        }

        .v-header .nav-item .child-nav__full-screen {
            position: fixed;
            right: auto;
            height: auto;
        }

        .v-header .nav-item .child-nav__full-screen.dropdown-menu {
            max-height: none;
        }

        .v-header.header-abs:not(.scrolled) .menu-main {
            color: #fff;
        }

        .v-header.white-bg .menu-main {
            color: var(--dark-blue-2) !important;
        }

        .prod-category .prod-block .description {
            -webkit-line-clamp: 3 !important;
        }

        .v-header .btn-login:hover {
            background: var(--dark-blue-2-200) !important;
            border-color: var(--dark-blue-2-200) !important;
        }
    }

    @media (min-width: 576px) {
        .v-header {
            height: var(--height-header);
        }

        .v-header:not(.scrolled)~.v-header-mask {
            height: 70px;
        }
    }

    .v-cloud-title span,
    .v-cloud-title p {
        font-size: inherit !important;
    }

    .no-scroll #page_header {
        z-index: 9999;
    }

    .v-header {
        position: fixed;
        top: 0;
        right: 0;
        left: 0;
        z-index: 1030;
        width: 100%;
        transform: translateY(0);
        background-color: #fff;
        transition: all 125ms ease;
    }

    .v-header.hidden {
        transform: translateY(-70px);
    }

    .v-header.header-abs:not(.white-bg) {
        background-color: transparent;
    }

    .v-header.header-abs:not(.white-bg) .vng-cloud-logo-main {
        display: block;
    }

    .v-header.header-abs:not(.white-bg) .vng-cloud-logo-sub {
        display: none;
    }

    .v-header.v-nav-show,
    .v-header.white-bg {
        background-color: #fff;
        box-shadow: 0 2px 4px 0 rgba(76, 76, 75, 0.1);
    }

    .vng-cloud-logo-main {
        display: none;
    }

    .menu-nav .nav-item .child-nav {
        opacity: 0;
        pointer-events: none;
    }

    .menu-nav .nav-item .child-nav .nav-child-item a {
        padding: 10px 15px;
        color: var(--text-body);
    }

    .menu-nav .nav-item.has-child .child-nav a.nav-link:hover,
    .menu-nav .nav-item.has-child .nav-child-item:hover>.nav-link {
        color: var(--vng-orange);
    }

    .menu-nav .nav-item.has-child .menu-main::before {
        content: "\f107";
        position: absolute;
        font-family: fontawesome-alloy;
        transition: transform 0.3s;
    }

    .v-navbar .dropdown-menu {
        border-radius: 0;
        overflow: inherit;
    }

    .site-wrap .dropdown-site.show .selected-lang::before {
        transform: rotate(-90deg);
    }

    .main-locale-flag {
        width: 25px;
        margin-top: -2px;
    }

    .site-item-wrap {
        padding: 5px 10px;
        cursor: pointer;
    }

    .site-item-wrap.selected {
        cursor: not-allowed;
    }

    .site-wrap.show .selected-lang::before {
        transform: rotate(-90deg);
    }

    .nav-child-item.has-child-2 .child-nav-2 {
        padding: 5px 0;
    }

    .nav-child-item.has-child-2:hover .child-nav-2 {
        display: block;
        right: auto !important;
        min-width: 300px !important;
    }

    .selected-lang::after {
        bottom: 0;
        left: 5px;
        right: -10px;
    }

    .site-item-wrap.site-item:hover {
        color: var(--vng-orange);
    }

    .dropdown-promotion .dropdown-menu a:active {
        background-color: rgba(84, 164, 255, 0.19);
        color: #16181b;
    }

    .dropdown-promotion .dropdown-menu a:focus-visible {
        outline: none;
    }

    .icon-promotion {
        width: 25px;
        -webkit-animation-name: gift;
        animation-name: gift;
        -webkit-animation-duration: 0.8s;
        animation-duration: 0.8s;
        -webkit-animation-delay: 1.5s;
        animation-delay: 1.5s;
        -webkit-animation-iteration-count: 5;
        animation-iteration-count: 5;
    }

    .dropdown-ext .promotion-desc {
        flex: 1;
    }

    .dropdown-ext .promotion-desc>div {
        font-size: 15px;
        line-height: 20px;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .dropdown-ext .promotion-desc>div:hover {
        color: var(--dark-blue-2);
    }

    .dropdown-ext .promotion-desc>p {
        color: #8f9294;
        font-size: 13px;
        margin-bottom: 0;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .promotion-icon {
        width: 40px;
        flex-shrink: 0;
        margin-top: 5px;
    }

    .promotion-icon img {
        margin-top: 1px;
        margin-left: 2px;
    }

    .promotion-icon::before {
        content: "";
        position: absolute;
        background-color: #56a4ff;
        left: 0;
        top: 0;
        width: 34px;
        height: 34px;
        border-radius: 50%;
    }

    .dropdown-ext__header {
        padding: 1rem 15px;
    }

    ul.menu-nav .nav-item.show .dropdown-menu {
        opacity: 1;
        pointer-events: auto;
        z-index: 3;
    }

    .v-header .dropdown-promotion .dropdown-menu {
        left: auto;
        right: 0;
        top: 100%;
        min-width: 300px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        overflow-y: auto;
    }

    .v-header .dropdown-promotion .number {
        position: absolute;
        border-radius: 50%;
        right: -8px;
        top: -8px;
        font-size: 10px;
    }

    .menu-prod-wrapper .tab-content {
        overflow: auto;
        background-color: #f5f6f6;
        position: relative;
    }

    .menu-prod-wrapper .tab-content>.active {
        display: flex;
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

    .menu-prod-wrapper .tab-pane {
        margin: 0 auto;
        padding: 15px;
    }

    .prod-group .nav-link {
        border-radius: 0;
        color: #000;
        font-size: 18px;
    }

    .prod-group .nav-link.active {
        color: var(--vng-orange);
        background-color: transparent;
    }

    .prod-group .nav-link:hover {
        color: var(--vng-orange);
    }

    .prod-group>.nav-link:not(.active) {
        padding-top: 0.5rem !important;
    }

    .prod-group .category:not(.show) .category-desc {
        padding: 0 !important;
    }

    .prod-group .nav-link.active,
    .prod-category .category-name {
        font-family: "Sarabun Bold", sans-serif;
    }

    .prod-category .category-name {
        color: #39519F;
        font-size: 18px;
    }

    .prod-category.inline .category-name {
        flex-shrink: 0;
    }

    .prod-category.inline .prod-block__wrapper {
        flex-grow: 1;
    }

    .prod-category.inline .prod-block {
        height: 100%;
    }

    .prod-block:not(.is-show) a {
        height: 100%;
    }

    .prod-category.inline .prod-block:not(:first-child) {
        margin-top: 20px;
    }

    .prod-category .prod-block .title {
        color: #000;
    }

    .prod-category .prod-block .description {
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        font-size: 13px;
        overflow: hidden;
        font-family: "Sarabun Light", sans-serif;
    }

    .prod-category .prod-block.active .nav-link .title {
        color: var(--vng-orange);
        font-family: "Sarabun Bold", sans-serif;
    }

    .prod-group .category:not(:last-child)::before {
        content: "";
        position: absolute;
        height: 1px;
    }

    .menu-prod-wrapper .tab-content.mask::before {
        position: absolute;
        z-index: 1;
    }

    .menu-prod-wrapper .tab-content::before {
        content: "";

        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        background-color: #1d2021;
        opacity: .3;
        transition: opacity 125ms ease;
    }

    .prod-category .prod-block.is-show {
        z-index: 1;
    }

    .sub-product a {
        padding-left: 25px !important;
    }

    .sub-product.active .title {
        color: var(--vng-orange);
        font-weight: 600;
    }

    .fancy-img {
        cursor: zoom-in;
    }

    .fancybox-thumbs__list {
        display: flex;
        justify-content: center;
        width: 100% !important;
    }

    @media (max-width: 768px) {
        .fancybox-thumbs {
            width: 100% !important;
            left: 0;
            top: unset !important;
        }

        .fancybox-show-thumbs .fancybox-inner {
            right: 0 !important;
        }

        .fancybox-caption {
            bottom: 90px;
        }
    }

    @media (min-width: 800px) {
        .fancybox-thumbs {
            top: auto;
            width: auto;
            bottom: 0;
            left: 0;
            right: 0;
            height: 95px;
            padding: 10px 10px 5px 10px;
            box-sizing: border-box;
            background: rgba(0, 0, 0, 0.3);
        }

        .fancybox-show-thumbs .fancybox-inner {
            right: 0;
            bottom: 95px;
        }
    }

    @-webkit-keyframes gift {
        25% {
            transform: rotate(10deg);
        }

        50% {
            transform: rotate(-10deg);
        }

        75% {
            transform: rotate(10deg);
        }

        100% {
            transform: rotate(-10deg);
        }
    }

    @keyframes gift {
        25% {
            transform: rotate(10deg);
        }

        50% {
            transform: rotate(-10deg);
        }

        75% {
            transform: rotate(10deg);
        }

        100% {
            transform: rotate(-10deg);
        }
    }

    @media (min-width: 1200px) {
        .v-header .nav-item:not(.has-child) .menu-main {
            padding-left: 20px;
            padding-right: 20px;
        }

        .prod-category:not(.inline) .prod-block__wrapper {
            grid-template-columns: repeat(3, 1fr);
        }

        .menu-nav .nav-item.has-child .menu-main::before {
            right: 10px;
        }

        .menu-nav .nav-item.site-wrap .menu-main::before {
            right: 15px;
        }
    }

    @media (min-width: 992px) {
        .menu-prod-wrapper .tab-pane {
            max-width: 95%;
        }

        .prod-category:not(.inline) .prod-block__wrapper {
            display: grid;
            gap: 20px;
        }
    }

    @media (max-width: 991.98px) {
        .prod-category .category-name.not-category {
            display: none;
        }
    }

    @media (min-width: 768px) and (max-width: 991.98px) {
        .prod-category .prod-block {
            margin-bottom: 1rem;
        }
    }

    @media (min-width: 992px) and (max-width: 1199.98px) {
        .prod-category:not(.inline) .prod-block__wrapper {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (min-width: 1024px) and (max-width: 1199.98px) {
        #page_header .navbar {
            max-width: 100%;
        }

        .v-header .nav-item .child-nav__full-screen {
            max-width: 100%;
        }

        .v-header .nav>li>a {
            padding-left: 15px;
            padding-right: 15px;
        }

        .nav-item-btn {
            padding-right: 1rem;
        }

        .nav-item.has-child .menu-main::before {
            right: 2px;
        }

        .menu-nav .nav-item.site-wrap .menu-main::before {
            right: 10px;
        }
    }

    @media (min-width: 1024px) {

        .v-header.white-bg .nav-item.show,
        .v-header.white-bg .nav-item:not(.nav-item-btn):hover {
            background-color: #f5f6f6;
        }

        .toggle-logo {
            display: none;
        }

        ul.menu-nav .nav-item.show .child-nav__full-screen {
            top: var(--height-header);
        }

        .v-header .nav-link.menu-main,
        .site-wrap .dropdown-site {
            letter-spacing: -1px;
            line-height: 26px;
            font-size: 16px;
        }

        .nav-item .child-nav-2 a.nav-link {
            padding-left: 25px;
        }

        .v-header.v-nav-show .nav-link.menu-main {
            color: var(--dark-blue-2);
        }

        .v-header.v-nav-show .nav-item .menu-main::after {
            background-color: var(--dark-blue-2);
        }

        .v-header .menu-main>span::after {
            content: " ";
            position: absolute;
            left: 0;
            right: 0;
            bottom: -5px;
            height: 2px;
            background-color: var(--dark-blue-2);
            opacity: 0;
            transition: all 0.3s ease;
        }

        .v-header .navbar .nav-item.active .menu-main>span::after {
            opacity: 1;
        }

        .v-header .btn-login {
            background-color: var(--dark-blue-2);
            border-color: var(--dark-blue-2);
        }

        .v-header.header-abs:not(.white-bg) .btn-login {
            background-color: var(--vng-orange);
            border-color: var(--vng-orange);
        }

        .v-header.header-abs:not(.white-bg) .menu-main>span::after {
            background-color: #fff;
        }

        .v-header.scrolled .menu-main>span::after {
            bottom: 0;
        }

        .v-header.scrolled .navbar .nav-item .menu-main::after {
            bottom: 16px;
        }

        .v-header ul.menu-nav {
            height: 100%;
            position: relative;
            margin-left: auto;
        }

        .v-header ul.menu-nav .nav-item.show .menu-main::before {
            transform: rotate(-90deg);
        }

        .v-header .dropdown-promotion .dropdown-menu {
            top: calc(100% - 10px);
        }

        .v-navbar .site-menu.dropdown-menu::after {
            left: 30px;
        }

        .navigation-group {
            display: flex;
            margin-left: auto;
            height: 100%;
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

        .nav-item.has-child .child-nav {
            min-width: 300px;
        }

        .site-wrap .dropdown-site .selected-lang::before {
            right: auto;
            left: 100%;
        }

        .site-wrap .site-menu {
            max-width: 200px;
            min-width: 120px !important;
        }

        .mobile-g-btn {
            display: none !important;
        }

        .nav-item .child-nav:not(.child-nav__full-screen) .nav-child-item a.active {
            color: var(--vng-orange) !important;
        }

        .nav-child-item.has-child-2>.nav-link::after {
            transform: rotate(90deg);
            padding-left: 0;
            transition: transform 0.3s;
        }

        .nav-child-item.has-child-2:hover {
            color: var(--vng-orange) !important;
        }

        .nav-child-item.has-child-2:hover .nav-link::after {
            transform: rotate(0);
        }

        .menu-prod-wrapper .tab-content {
            height: calc(100vh - var(--height-header) - 30px);
            max-height: calc(100vh - var(--height-header) - 30px);
        }

        .prod-group {
            width: 430px;
            min-width: 430px;
        }

        .prod-group .category .category-desc .desc {
            padding-left: 30px;
        }

        .prod-group .category .category-desc .desc::before {
            content: "";
            position: absolute;
            left: 15px;
            top: 5px;
            bottom: 5px;
            width: 1px;
            background-color: #efeaea;
        }

        .copyright {
            display: none;
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

        .prod-block.is-show .nav-link {
            padding-bottom: 0 !important;
        }
    }

    @media (min-width: 768px) {
        .menu-nav .nav-item .child-nav {
            z-index: 0;
            transition: opacity 0.4s ease;
        }

        .menu-nav .dropdown-menu.child-nav__full-screen {
            background-color: #eaebee;
        }

        .menu-nav .nav-item .child-nav.dropdown-menu:not(.child-nav__full-screen) {
            background-color: #f5f6f6;
        }

        .menu-nav .nav-item.has-child {
            position: relative;
        }

        .menu__header {
            display: none;
        }

        ul.menu-nav .nav-item.show .dropdown-menu {
            visibility: visible;
            pointer-events: auto;
        }

        .prod-category .prod-block:not(.is-show) {
            box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 3px;
            border-radius: 9px;
        }

        .prod-category .prod-block {
            transition: transform 1s cubic-bezier(0.08, 0.52, 0.52, 1);
        }

        .prod-group .category .category-desc {
            opacity: 0;
            visibility: hidden;
            max-height: 0;
            transition: opacity 0.3s, max-height 0.3s cubic-bezier(0.08, 0.52, 0.52, 1);
        }

        .prod-group .category .category-desc .desc {
            font-size: 15px;
        }

        .prod-group .category.show {
            background-color: #fff;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 20px;
            border-radius: 5px;
        }

        .prod-category .category-name {
            margin-bottom: .5rem;
        }

        .prod-group .category.show .category-desc {
            max-height: 1000px;
            opacity: 1;
            visibility: visible;
        }

        .prod-category .prod-block.active:not(.is-show)::before {
            border-color: var(--vng-orange);
        }

        .prod-category .prod-block::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border: 1.5px solid #fff;
            border-radius: inherit;
        }

        .prod-category .prod-block .description {
            color: #585858;
        }

        .prod-group .category:not(:last-child)::before {
            left: 1rem;
            bottom: -1rem;
            right: 0;
            background-color: rgba(57, 81, 159, 0.3);
        }

        .prod-category .prod-block:not(.is-show):hover {
            transform: translateY(-5px);
            box-shadow: rgba(149, 157, 165, 0.2) 0px 2px 10px;
        }

        .sub-product-menu {
            position: absolute;
            top: calc(var(--h) + 10px);
            left: 0;
            right: 0;
            background-color: #fff;
            transform: scaleY(0);
            transform-origin: top center;
            z-index: 1;
            transition: transform 125ms ease;
        }

        .prod-block.is-show .sub-product-menu {
            transform: scaleY(1);
        }

        .prod-category .prod-block:not(.is-show):hover .title {
            color: var(--vng-orange);
            font-weight: 600;
        }

        .sub-product:hover {
            background-color: #f4f4f4;
        }

        .prod-category .prod-block.is-show .nav-link .title {
            color: var(--vng-orange);
            font-weight: 600;
        }

        .prod-category .prod-block.has-child::after {
            content: "\f107";
            font-family: fontawesome-alloy;
            position: absolute;
            right: 10px;
            top: 8px;
            transition: transform 300ms ease-in-out;
        }

        .prod-category .prod-block.is-show::after {
            transform: rotate(-90deg);
        }
    }

    @media (max-width: 1023.98px) {
        .v-header.white-bg .mobile-g-btn .active-menu {
            color: var(--dark-blue-2);
        }

        .v-header .nav-child-item.has-child-2 .child-nav-2 {
            left: 0;
            background-color: transparent;
            position: relative;
            padding-left: 15px;
            display: block;
        }

        .v-header .btn-login:hover {
            background-color: #dc5c23;
            border-color: #dc5c23;
            text-decoration: underline;
        }

        .menu-nav {
            margin-top: 60px;
        }

        .mobile-g-btn .active-menu {
            color: #fff;
            font-family: "Sarabun Bold", sans-serif;
        }

        .mobile-g-btn .navbar-toggle {
            cursor: pointer;
            margin-right: 0;
            padding: 0;
            border-radius: 0;
        }

        .nav-item-btn .btn-login {
            background-color: var(--vng-orange);
            border-color: var(--vng-orange);
        }

        #page_header .mobile-opacity {
            position: absolute;
            opacity: 0;
            visibility: hidden;
            transition: opacity 350ms, transform 350ms ease-out, visibility 0s 350ms;
            transition-delay: 0.262s, 0.262s;
        }

        #page_header .navbar .navbar-collapse .toggle-logo {
            left: 10px;
            top: 5px;
        }

        #page_header .navbar .navbar-collapse.show .mobile-opacity {
            opacity: 1;
            visibility: visible;
            transform: translate3d(0, 0, 0);
            -webkit-transform: translate3d(0, 0, 0);
        }

        #page_header .navbar .navbar-collapse .toggle-logo img {
            max-height: 50px;
        }

        #page_header .navbar .navbar-collapse .navbar-toggle {
            position: absolute;
            top: 10px;
            right: 20px;
            margin-right: 0;
            cursor: pointer;
            display: block;
            transform: translate3d(10px, 0, 0);
        }

        #page_header .navbar .navbar-collapse .navbar-toggle svg {
            transform: rotate(180deg);
            transition: transform 450ms ease-out;
        }

        .navbar-header {
            width: 100%;
        }

        .v-navbar .navbar-collapse {
            position: fixed;
            top: 0;
            background-color: #fff;
            transition: left 0.3s;
            z-index: 1000;
            height: 100vh;
        }

        #page_header .navbar .navbar-collapse .navbar-toggle,
        .menu-nav .nav-item {
            opacity: 0;
            visibility: hidden;
            transition: opacity 450ms, transform 450ms ease-out, visibility 0s 450ms;
            transition-delay: 0.362s, 0.362s;
        }

        #page_header .navbar .navbar-collapse.show .menu-nav .nav-item {
            opacity: 1;
            visibility: visible;
        }

        .nav-link.menu-main {
            color: #484848;
            padding-top: 16px;
            padding-bottom: 16px;
        }

        .v-header .nav-item.active .menu-main,
        .site-item-wrap.selected,
        .v-header .nav-item:not(.active).has-child.show .menu-main,
        .v-header .site-wrap.show .selected-lang {
            color: var(--vng-orange);
        }

        .menu-nav .nav-item .child-nav:not(.child-nav__full-screen) .nav-child-item a,
        .site-item-wrap {
            padding-left: 30px;
        }

        .nav-child-item.has-child-2 .nav-link>span {
            padding-right: 10px;
        }

        .child-nav__full-screen .nav-child-item .description {
            font-size: 15px;
        }

        .v-header .nav-link.menu-main,
        .btn-login {
            font-size: 18px;
            font-family: "Sarabun Bold", sans-serif;
        }

        .site-wrap .dropdown-site,
        .v-header .menu-nav .nav-item.nav-item-btn {
            justify-content: flex-start;
        }

        .v-navbar .navbar-collapse {
            left: -100%;
        }

        .v-navbar .navbar-collapse.show {
            left: 0;
        }

        .nav-item-btn {
            padding-top: 16px;
            padding-bottom: 16px;
        }

        .mobile-g-btn .navbar-toggle img {
            display: none;
        }

        .v-header.header-abs:not(.white-bg) .abs-icon,
        .v-header.white-bg .pos-icon,
        .v-header.v-nav-show .pos-icon {
            display: block;
        }

        .site-wrap .dropdown-site .selected-lang::before {
            right: -10px;
        }

        .nav-item .child-nav .nav-link.active {
            color: var(--vng-orange);
        }

        .nav-item .child-nav.dropdown-menu {
            max-width: 100%;
        }

        .nav-item.has-child .menu-main::before {
            right: 20px;
            font-size: 25px;
        }

        .nav-item.show .menu-main::after {
            height: 100%;
        }

        .nav-item .menu-main::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 3px;
            height: 0;
            background-color: var(--vng-orange);
            transition: height 0.3s;
        }

        .options-menu {
            position: absolute;
            top: calc(50% - 13px);
            right: 20px;
        }

        .copyright {
            position: absolute;
            left: 20px;
            bottom: 10px;
            color: #484848;
        }

        .nav-child-item.has-child-2>.nav-link::after {
            content: none;
        }

        .child-nav-2 .nav-link::before {
            content: "";
            position: absolute;
            left: 15px;
            top: 25px;
            width: 14px;
            height: 1px;
            background-color: #aaa;
        }

        .child-nav-2::before {
            content: "";
            position: absolute;
            left: 30px;
            top: -5px;
            bottom: 23px;
            width: 1px;
            background-color: #aaa;
        }

        .menu-prod-wrapper .tab-content {
            height: calc(100vh - 420px);
            max-height: calc(100vh - 420px);
        }

        .no-scroll {
            overflow: hidden;
        }
    }

    @media (min-width: 576px) and (max-width: 1055.98px) {
        .menu-prod-wrapper .cloud-container {
            max-width: 100% !important;
        }
    }

    @media (min-width: 992px) and (max-width: 1199.98px) {
        #page_header .v-header.v-nav-show .v-navbar {
            box-shadow: none;
        }
    }

    @media (min-width: 768px) and (max-width: 1055.98px) {
        .prod-category.inline {
            max-width: 50%;
            flex: 0 0 50%;
        }

        .prod-category.inline:nth-child(1) .prod-block__wrapper {
            margin-right: 10px;
        }

        .prod-category.inline:nth-child(2)>div {
            margin-left: 5px;
            margin-right: 5px;
        }

        .prod-category.inline:nth-child(3)>div {
            margin-left: 10px;
        }
    }

    @media (min-width: 768px) and (max-width: 1023.98px) {
        .menu-nav {
            margin-top: 80px;
            display: flex;
            flex-direction: column;
        }

        .v-header ul.menu-nav .nav-item .child-nav {
            max-height: 0;
            visibility: hidden;
            float: none;
            -webkit-transition: all 300ms ease-in-out;
            -moz-transition: all 300ms ease-in-out;
            -o-transition: all 300ms ease-in-out;
            transition: all 300ms ease-in-out;
            position: relative;
        }

        .nav-item.has-child .child-nav {
            background-color: #f4f4f4;
        }

        #page_header .mobile-opacity {
            transform: translate3d(0, -50px, 0);
        }

        #page_header .navbar .navbar-collapse.show .menu-nav .nav-item {
            transform: translate3d(0, 0, 0);
            -webkit-transform: translate3d(0, 0, 0);
        }

        .v-header ul.menu-nav .nav-item.show .child-nav {
            opacity: 1;
            visibility: visible;
            max-height: 1000px;
        }

        .nav-item-btn,
        .nav-link.menu-main {
            padding-left: 30px !important;
        }

        #page_header .navbar .navbar-collapse .toggle-logo {
            left: 20px;
            top: 20px;
        }

        #page_header .navbar .navbar-collapse .navbar-toggle {
            top: 25px;
        }

        .prod-group {
            width: 50%;
            flex-shrink: 0;
        }

        .prod-group .category.show .category-desc .img {
            text-align: center;
            margin-bottom: 0.5rem;
        }

        .v-navbar .navbar-collapse {
            right: 0;
        }

        .v-header ul.menu-nav .nav-item.show .nav-link::before {
            transform: rotate(-90deg);
        }
    }

    @media (max-width: 767.98px) {

        .v-header,
        .v-header-mask {
            height: 56px;
        }

        .v-navbar .navbar-collapse {
            width: 320px;
        }

        .v-navbar .navbar-collapse.show {
            box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.11);
        }

        .nav-item.has-child .child-nav {
            background-color: #fff;
        }

        .v-header ul.menu-nav .nav-item .child-nav {
            top: 56px;
            bottom: 0;
            transform: translateX(100%);
            width: 100%;
            max-height: 100%;
            overflow: auto;
            transition: opacity 0.2s ease-in-out, transform 0.3s ease-in-out;
        }

        .v-header ul.menu-nav .nav-item .child-nav.child-nav__full-screen {
            padding-bottom: 80px !important;
        }

        .v-header ul.menu-nav .nav-item.show .child-nav {
            transform: translateX(0);
        }

        .prod-group .category:not(:last-child)::before {
            bottom: 0;
            left: 30px;
            right: 15px;
            background-color: #ddd;
        }

        .prod-group .category-link {
            padding-left: 30px !important;
            padding-right: 50px !important;
        }

        .prod-group .category .category-desc {
            padding-right: 1rem;
        }

        .prod-group .category .prod-group .category>.nav-link,
        .prod-group .category .category-desc {
            padding-left: 30px !important;
        }

        .prod-group .category.show {
            padding-bottom: 1rem;
        }

        .prod-category .prod-block {
            background-color: transparent !important;
        }

        .prod-group .prod-block.active .description {
            color: #000;
        }

        .prod-category .prod-block:not(.active) .description {
            color: #8c8c8c;
        }

        .prod-category .prod-block:not(:last-child)::after {
            content: '';
            position: absolute;
            left: 15px;
            right: 0;
            bottom: 0;
            background-color: #ddd;
            height: 1px;
        }

        .menu__header {
            display: flex;
            padding-top: 15px;
            padding-right: 20px;
            padding-bottom: 15px;
            padding-left: 20px;
            background-color: #f2fafe;
        }

        .menu__header::before {
            content: '';
            position: absolute;
            top: 0;
            height: 0;
            left: 0;
            width: 3px;
            background-color: var(--dark-blue-2);
            transition: height 300ms ease;
        }

        ul.menu-nav .nav-item.show .menu__header::before {
            height: 100%;
        }

        .menu__header::after {
            content: "\f104";
            font-family: fontawesome-alloy;
            position: absolute;
            right: 15px;
        }

        .nav-item.has-child .menu-main::before {
            transform: rotate(-90deg);
        }

        .prod-category .category-name {
            background-color: #f2fafe;
            padding: 10px;
            text-transform: uppercase;
        }

        .prod-group .category .category-link::after {
            content: "\f114";
            font-family: 'fontawesome-alloy';
            position: absolute;
            right: 15px;
            top: 18px;
            font-size: 16px;
            color: #444444;
        }

        .prod-group .category.show .category-link::after {
            content: "\f115";
            color: var(--vng-orange);
        }

        .main-locale-flag {
            margin-right: .5rem;
        }

        .prod-category .prod-block.has-child .nav-link .title::after {
            content: "\f107";
            font-family: fontawesome-alloy;
            position: absolute;
            right: 10px;
            top: 8px;
        }
    }

    @media (max-width: 575.98px) {
        .mobile-g-btn .active-menu {
            display: none;
        }

        .menu-nav::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            background-color: #ddd;
            height: 1px;
        }

        .v-header .child-nav__full-screen {
            background-color: #fff !important;
        }

        .menu-prod-wrapper .tab-content {
            display: none;
        }

        .prod-group {
            display: block;
        }

        .prod-group .category .prod-category {
            display: none;
        }

        .prod-group .category.show .prod-category {
            display: block;
            padding-top: 0.5rem;
        }

        .prod-group .category:not(.show) .category-desc {
            display: none;
        }

        .nav-item-btn {
            display: block;
            padding-right: 1rem;
        }
    }

    .overlay {
        display: none;
        position: fixed;
        z-index: 3200;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background-color: rgba(0, 0, 0, 0.3);
    }
</style>
<#assign activeMenu="">
<#assign menuFixed= themeDisplay.getLayout().getExpandoBridge().getAttribute("Fixed")!true>
<#assign path=themeDisplay.getLayout().getExpandoBridge().getAttribute("Path")!''>
<#assign friendlyURL = themeDisplay.getLayoutFriendlyURL(layout)>
<#if menuFixed>
    <#assign arrDomain = ["/about-us", "/our-history", "/terms-and-conditions", "/commitment-to-quality-service", "/cam-ket-chat-luong-dich-vu", "/product/vcolo", "/contact", "/contact-sales", "/blog", "/blog/", "/events", "/events/", "/product/live-streaming"]>
    <#list arrDomain as domain>
        <#if domain == friendlyURL || friendlyURL?contains(domain)>
        <#assign menuFixed = false>
        <#break>
    </#if>
    </#list>
</#if>
<#assign hHeader=70>
<#assign hHScrolled=60>
<#assign preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "borderless" ) /> <#assign plId=layout.getPlid()>
<#assign productActive = false>
<#assign selectedLang = {}>
<#assign mapLang = [{"key": "vi_VN", "label": "VIE","name": "vi","icon": "vietnam.png"}, {"key": "en_US", "label": "ENG","name": "en","icon": "united-states.png"}]>
<div class="v-header <#if !menuFixed>v-nav-show<#else>header-abs</#if>" role="banner" style="--height-header: ${hHeader}px">
    <div class="navbar v-navbar cloud-container align-items-center h-100" id="v-navbar" style="padding-left: 15px;padding-right: 15px;">
        <div class="mobile-g-btn d-flex align-items-center position-absolute">
            <button type="button" id="nav-toggle" class="navbar-toggle d-flex" data-target="navigation-menu">
            <img class="abs-icon" src="/documents/20126/906379/vng-cloud-icon-menu.svg" />
            <img class="pos-icon" src="/documents/20126/906379/vng-cloud-icon-menu-color.svg" />
            </button>
            <div class="t-upper active-menu ml-1" id="active-menu"></div>
        </div>
        <div class="navbar-header flex-center">
            <a class="navbar-brand vng-cloud-logo" href="/">
                <img class="vng-cloud-logo-main lazyload img-fluid" data-src="/documents/20126/906379/vng-cloud-logo-white.png" alt="" width="150px">
                <img class="vng-cloud-logo-sub lazyload img-fluid" data-src="/documents/20126/906379/logo-vng-cloud-color.png" alt="" width="150px">
            </a>
        </div>
        <div class="navigation-group">
            <nav id="navigation-menu" class="navbar-collapse">
                <a id="nav-toggle" class="navbar-toggle collapsed p-0 mobile-opacity" data-toggle="collapse" data-target="navigation-menu" aria-expanded="false" title="Toggle Menu">
                    <img class="lazyload img-fluid" data-src="/documents/20126/1718708/mobile-menu-toggle-close.svg" />
                </a>
                <div class="toggle-logo mobile-opacity">
                    <img class="lazyload" data-src="/documents/20126/906379/logo-vng-cloud-color.png">
                </div>
                <ul class="menu-nav list-unstyled" id="menu-nav">
                    <#assign groupActive = "/product/iaas">
                    <#foreach nav_item in entries>
                        <#assign hasChild=false />
                        <#assign hasChildLev2=false />
                        <#assign is_nav_child_selected=false />
                        <#assign is_nav_child_lev2_selected=false />
                        <#assign megaMenu = nav_item.getName()=='Products' || nav_item.getName()=='Sản phẩm'>
                        <#if nav_item.isBrowsable()>
                            <#if nav_item.hasBrowsableChildren()>
                                <#assign hasChild=true />
                                <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                    <#if child_nav_item.isSelected()>
                                        <#assign is_nav_child_selected=true />
                                    </#if>
                                    <#if child_nav_item.isBrowsable()>
                                        <#assign hasChildLev2=true />
                                        <#foreach child_lev2_nav_item in child_nav_item.getBrowsableChildren()>
                                            <#if child_lev2_nav_item.isSelected()>
                                                <#assign is_nav_child_lev2_selected=true />
                                            </#if>
                                        </#foreach>
                                    </#if>
                                </#foreach>
                            </#if>
                            <#if nav_item.isSelected() || is_nav_child_selected>
                                <#assign activeMenu=nav_item.getName()>
                            </#if>
                            <li class="nav-item<#if nav_item.isSelected() || is_nav_child_selected> active</#if><#if hasChild> has-child</#if><#if megaMenu> product-menu</#if>">
                                <#if hasChild>
                                    <a class="nav-link menu-main d-flex align-items-center transition-all t-upper" aria-labelledby="layout_${nav_item.getLayoutId()}" href="javascript:void(0)" ${nav_item.getTarget()} role="menuitem" id="dropdown_${nav_item.getLayoutId()}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="position-relative">${nav_item.getName()}</span>
                                    </a>
                                <#else>
                                    <a class="nav-link menu-main d-flex align-items-center transition-all t-upper" aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
                                        <span class="position-relative">${nav_item.getName()}</span>
                                    </a>
                                </#if>
                                <#if hasChild>
                                    <div class="child-nav d-block dropdown-menu header-dropdown m-0 p-0 border-0<#if megaMenu> cloud-container child-nav__full-screen</#if>" id="child-nav" aria-labelledby="dropdown_${nav_item.getLayoutId()}">
                                        <h3 class="menu__header mb-0 align-items-center position-relative t-upper">
                                            <span>${nav_item.getName()}</span>
                                        </h3>
                                        <#if megaMenu>
                                        <div class="menu-prod-wrapper d-md-flex align-items-md-start">
                                            <div class="nav flex-column prod-group nav-pills p-md-3 h-100" id="prod-tab" role="tablist" aria-orientation="vertical">
                                            <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                                <#assign is_nav_child_selected=child_nav_item.isSelected()>
                                                <#assign childNavLayoutId = child_nav_item.getLayoutId()>
                                                <#assign active = child_nav_item.getLayout().getFriendlyURL() == groupActive>
                                                <div class="category mb-md-3 mt-sm-3 position-relative<#if active> show</#if>">
                                                    <a class="nav-link category-link p-3 pb-md-2 transition-all<#if active> active show</#if>" id="${childNavLayoutId}-tab" data-toggle="pill" href="#${childNavLayoutId}" role="tab" aria-controls="${childNavLayoutId}" aria-selected="false">${child_nav_item.getName()} </a>
                                                    <div class="category-desc p-md-3">
                                                        <div class="d-lg-flex align-items-center">
                                                            <div class="img pl-1">
                                                            <#assign pathImage=child_nav_item.getLayout().getExpandoBridge().getAttribute("Image")!''>
                                                                <img class="lazyload hidden-xs" data-src="${pathImage}" width="90px" />
                                                            </div>
                                                            <div class="desc position-relative">${child_nav_item.getLayout().getDescription(themeDisplay.getLanguageId())}</div>
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
                                                <#assign childNavLayoutId = child_nav_item.getLayoutId()>
                                                <#assign active = child_nav_item.getLayout().getFriendlyURL() == groupActive>
                                                <div class="tab-pane w-100 fade row<#if active> active show</#if>" id="${childNavLayoutId}" role="tabpanel" aria-labelledby="${childNavLayoutId}-tab"> <#foreach prodCategory in child_nav_item.getBrowsableChildren()>
                                                    <div class="prod-category mb-md-3 col-<#if inlineCategory?seq_index_of(prodCategory.getName()?lower_case?trim) lt 0>12<#else>sm-4 inline d-sm-flex flex-column</#if>">  
                                                    <#if notCategory?seq_index_of(prodCategory.getName()?lower_case?trim) gte 0>
                                                        <div class="category-name not-category">&nbsp;</div>
                                                        <#else>
                                                        <div class="category-name">${prodCategory.getName()}</div>
                                                        </#if>
                                                        <div class="prod-block__wrapper">
                                                        <#foreach product in prodCategory.getBrowsableChildren()>
                                                            <#assign prodActive = product.isSelected()>
                                                            <#if prodActive> <#assign productActive = true> </#if>
                                                            <#assign hasSubProduct=false>
                                                            <#if product.hasBrowsableChildren()> <#assign hasSubProduct=true> </#if>
                                                            <div class="prod-block position-relative bg-white nav-child-item<#if prodActive> active</#if><#if hasSubProduct> has-child</#if>" data-dropdown-product>
                                                                <a class="nav-link" ${product.getTarget()} aria-labelledby="layout_${product.getLayoutId()}" href="<#if !hasSubProduct>${product.getURL()}<#else>#</#if>" role="menuitem" title="${product.getName()}" <#if hasSubProduct>data-dropdown-sub-product</#if>>
                                                                    <div class="title transition-all" title="${product.getName()}"> ${product.getName()?split('|')[0]} </div>
                                                                    <div class="description pt-1 mb-md-2">${product.getName()?split('|')[1]!''}</div>
                                                                </a>
                                                                <#if hasSubProduct>
                                                                <div class="sub-product-menu">
                                                                    <#foreach subProduct in product.getBrowsableChildren()>
                                                                        <#assign subProdActive = subProduct.isSelected()>
                                                                        <div class="sub-product<#if subProdActive> active</#if>">
                                                                            <a class="d-block h-100" ${subProduct.getTarget()} aria-labelledby="layout_${subProduct.getLayoutId()}" href="${subProduct.getURL()}" role="menuitem" title="${subProduct.getName()}">
                                                                                <div class="title transition-all" title="${subProduct.getName()}"> ${subProduct.getName()?split('|')[0]} </div> <div class="description pt-1 mb-md-2">${subProduct.getName()?split('|')[1]!''}</div>
                                                                            </a>
                                                                        </div>
                                                                    </#foreach>
                                                                </div>
                                                            </#if>
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
                                            <#foreach child_nav_item in nav_item.getBrowsableChildren()>
                                                <#assign is_nav_child_selected=false />
                                                <#if child_nav_item.isSelected()> <#assign is_nav_child_selected=true /> </#if>
                                                <div nav-url="${child_nav_item.getRegularURL()}" nav-target="${child_nav_item.getTarget()}" nav-name="${child_nav_item.getName()}" class="nav-child-item <#if child_nav_item.hasBrowsableChildren()> has-child-2</#if>">
                                                    <a class="nav-link<#if is_nav_child_selected> active</#if>" aria-labelledby="layout_${child_nav_item.getLayoutId()}" href="<#if child_nav_item.hasBrowsableChildren()>javascript:void(0)<#else>${child_nav_item.getURL()}</#if>" ${child_nav_item.getTarget()} role="menuitem">
                                                        <span style="font-size: 16px">${child_nav_item.getName()}</span>
                                                    </a>
                                                    <#if child_nav_item.hasBrowsableChildren()>
                                                    <div class="child-nav-2">
                                                        <#foreach child_lev2_nav_item in child_nav_item.getBrowsableChildren()>
                                                            <#assign is_nav_child2_selected=false />
                                                            <#if child_lev2_nav_item.isSelected()> <#assign is_nav_child2_selected=true /> </#if>
                                                            <div nav-url="${child_lev2_nav_item.getRegularURL()}" nav-target="${child_lev2_nav_item.getTarget()}" nav-name="${child_lev2_nav_item.getName()}" class="nav-child-item">
                                                                <a class="nav-link <#if is_nav_child2_selected> active</#if>" aria-labelledby="layout_${child_lev2_nav_item.getLayoutId()}" href="${child_lev2_nav_item.getURL()}" ${child_lev2_nav_item.getTarget()} role="menuitem">
                                                                    <span style="font-size: 16px">${child_lev2_nav_item.getName()}</span>
                                                                </a>
                                                            </div>
                                                        </#foreach>
                                                    </div>
                                                    </#if>
                                                </div>
                                            </#foreach>
                                        </#if>
                                    </div>
                                </#if>
                            </li>
                        </#if>
                    </#foreach>
                    <#list mapLang as lang>
                        <#if lang.key == themeDisplay.getLanguageId()>
                            <#assign selectedLang = lang>
                            <#break>
                        </#if>
                    </#list>
                    <li class="nav-item has-child site-wrap" id="site-wrap">
                        <a href="javascript:void(0)" class="nav-link menu-main d-flex align-items-center flex-center dropdown-site d-flex t-upper" data-target="site-wrap" aria-labelledby="dropdown_locale" id="dropdown_locale" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <div class="main-locale-flag">
                                <img class="img-fluid main-locale-img" id="main-locale-img" src="/documents/20126/960997/${selectedLang.icon}">
                            </div>
                            <div class="selected-lang pl-1 pr-2 position-relative" data-target="site-wrap">${selectedLang.label}</div>
                        </a>
                        <div class="site-menu dropdown-menu header-dropdown m-0 p-0 border-0 child-nav d-block" id="site-content" aria-labelledby="dropdown_locale">
                            <h3 class="menu__header mb-0 align-items-center position-relative t-upper">
                                <span>${selectedLang.label}</span>
                            </h3>
                            <#list mapLang as lang>
                                <div class="site-item-wrap d-flex align-items-center <#if lang.key == themeDisplay.getLanguageId()>selected<#else>site-item</#if>" data-href="/c/portal/update_language?p_l_id=${plId}&redirect=${themeDisplay.getLayoutFriendlyURL(layout)}&languageId=${lang.key}" data-lang="${lang.name}">
                                    <span class="nav-site-icon">
                                        <img class="img-fluid" src="/documents/20126/960997/${lang.icon}" width="20px"/>
                                    </span>
                                    <div class="nav-site-lang pl-2">${lang.label}</div>
                                </div>
                            </#list>
                        </div>
                    </li>
                    <li class="nav-item nav-item-btn flex-center pl-3">
                        <a class="nav-link flex-center btn btn-default btn-login pt-1 pb-1 pl-3 pr-3 t-upper" aria-labelledby="layout_908828" href="https://my.vngcloud.vn?hl=<#if themeDisplay.getLanguageId()=='vi_VN'>vi<#else>en</#if>" target="_blank" role="menuitem"> <#if themeDisplay.getLanguageId()=='vi_VN'>Đăng nhập<#else>Login</#if> </a>
                    </li>
                </ul>
                <div class="copyright">© VNG Cloud 2021</div>
            </nav>
            <div class="options-menu d-flex align-items-center">
                <div class="menu-right">
                    <ul class="list-unstyled m-0 p-0">
                        <#assign journalArticleLocalService=serviceLocator.findService("com.liferay.journal.service.JournalArticleLocalService")>
                        <#assign assetEntryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetEntryLocalService")>
                        <#assign catLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService")>
                        <#assign promotionsArticle=journalArticleLocalService.getArticles(groupId, 1664034)>
                        <#assign promotionsArticle=promotionsArticle?sort_by('createDate')?reverse>
                        <#assign allowedCat=['New', 'new']>
                        <#assign exceptCat=['Test', 'test']>
                        <#assign promotionId = ''>
                        <#assign countPromotion=0>
                        <#assign arrPromotion=[]>
                        <#assign index=0>
                        <#list promotionsArticle as promotion>
                            <#assign nextArticleResourcePrimKey=promotion.getResourcePrimKey()>
                            <#assign nextArticleAssetEntry=assetEntryLocalService.getEntry("com.liferay.journal.model.JournalArticle", nextArticleResourcePrimKey)>
                            <#assign nextArticleAssetEntryEntryId=nextArticleAssetEntry.getEntryId()>
                            <#assign nextCategories=catLocalService.getEntryCategories(nextArticleAssetEntryEntryId)> <#assign allowed = false>
                            <#if nextCategories?size gt 0>
                                <#list nextCategories as cat>
                                    <#if allowedCat?seq_index_of(cat.getName()) gte 0>
                                        <#assign allowed = true>
                                        <#break>
                                    </#if>
                                </#list>
                            </#if>
                            <#if allowed>
                                <#if !promotion?has_next || promotionsArticle[promotion?index + 1].getArticleId() != promotion.getArticleId()>
                                    <#assign countPromotion++>
                                    <#assign document=saxReaderUtil.read(promotion.getContent())>
                                    <#assign rootElementNext=document.getRootElement()>
                                    <#assign xPathTitle=saxReaderUtil.createXPath("dynamic-element[@name='title']/dynamic-content[@language-id='${locale}']")>
                                    <#assign title=xPathTitle.selectSingleNode(rootElementNext).getStringValue()>
                                    <#assign xPathDesc=saxReaderUtil.createXPath("dynamic-element[@name='Description']/dynamic-content[@language-id='${locale}']")>
                                    <#assign desc=xPathDesc.selectSingleNode(rootElementNext).getStringValue()>
                                    <#assign xPathUrl=saxReaderUtil.createXPath("dynamic-element[@name='urlDetail']/dynamic-content[@language-id='${locale}']")>
                                    <#assign url=xPathUrl.selectSingleNode(rootElementNext).getStringValue()>
                                    <#assign arrPromotion += [{"title": title, "desc": desc, "url": url}]>
                                    <#assign index++>
                                </#if>
                            </#if>
                        </#list>
                        <li class="dropdown-promotion">
                            <a href="javascript:void(0)" class="flex-center position-relative pl-xl-3 pr-xl-3" aria-labelledby="dropdown_promotion" id="dropdown_promotion" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="icon-promotion lazyload" data-src="/documents/20126/906379/icon-notify-promotion.png">
                                <#if index gt 0>
                                    <div class="badge badge-danger number promotion-number flex-center" id="promotion-number">${index}</div>
                                </#if>
                            </a>
                            <ul class="dropdown-menu header-dropdown m-0 p-0 border-0 dropdown-ext" aria-labelledby="dropdown_promotion">
                                <li class="dropdown-ext__header d-flex align-items-center justify-content-between position-relative">
                                    <div class="primary-color"><b>Promotion <span>(${index})</span></b></div>
                                </li>
                                <#list arrPromotion as newPromotion>
                                    <li class="p-0">
                                        <a class="d-flex mb-2 p-2" target="_blank" href="/promotions/${newPromotion.url}">  
                                            <div class="promotion-icon position-relative">
                                                <img class="lazyload position-relative" data-src="/documents/20126/906379/icon-notify-promotion.png" width="30px" height="30px" />
                                            </div>
                                            <div class="promotion-desc pl-1">
                                                <div title="${newPromotion.title}">${newPromotion.title}</div>
                                                <p title="${newPromotion.desc}" class="d-none">${newPromotion.desc}</p>
                                            </div>
                                        </a>
                                    </li>
                                </#list>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<#if !menuFixed>
<div class="v-header-mask">&nbsp;</div>
</#if>
<script type="text/javascript" src="/o/vng-cloud-theme/js/wow_1_1_2.min.js" defer></script>
<script type="text/javascript">
    window.lazySizesConfig = window.lazySizesConfig || {};
    window.lazySizesConfig.customMedia = {
        '--small': '(max-width: 480px)',
        '--medium': '(max-width: 1599.98px)',
        '--large': '(min-width: 1600px)'
    };
</script>
<script type="text/javascript" defer>
    $(document).ready(function() {
        var wow = new WOW({
            boxClass: "wow",
            animateClass: "animated",
            offset: 0,
            mobile: true,
            live: true
        });
        wow.init();
        var activeMenu = "${activeMenu}",
            hHeader = parseInt("${hHeader}");
        if (activeMenu == "" || ["trang ch\u1ee7", "home"].includes(activeMenu.toLowerCase().trim()))
            activeMenu = "Menu";
        document.getElementById("active-menu").innerHTML = activeMenu;
        const vHeader = $(".v-header"),
            prodTab = document.querySelector("#prod-tab"),
            categoryItems = $(prodTab).find('a'),
            subProduction = document.querySelectorAll(".prod-block.has-child"),
            prodTabContent = document.querySelector("#prod-tabContent"),
            productMenu = document.querySelector(".child-nav__full-screen"),
            subProductActive = document.querySelector(".sub-product.active");
        changeProductMenu();
        $('body').append("<div class='overlay'></div>")
        "${productActive?c}" === "true" && ($('.product-menu').addClass('active'));
        $(window).bind("scroll", function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > hHeader) {
                vHeader.addClass("scrolled white-bg");
                vHeader.get(0).style.setProperty("--height-header", "${hHScrolled}" + "px");
            } else {
                vHeader.removeClass("scrolled");
                vHeader.get(0).style.setProperty("--height-header", hHeader + "px");
                !hasDropdownOpened($('.navigation-group'));
            }
        });
        $(window).bind("resize", function () {
            changeProductMenu();
        });
        initLang(${jsonFactoryUtil.looseSerializeDeep(selectedLang)});
        subProductActive && subProductActive.parentNode.parentNode.classList.add("active");
        $(".navigation-group").on({
            mouseenter: function () {
                (!vHeader.hasClass("scrolled")) && (vHeader.addClass("white-bg"));
            },
            mouseleave: function () {
                !vHeader.hasClass("scrolled") && hasDropdownOpened($(this));
            }
        });
        $(".v-header").on('click', '.header-dropdown', function (e) {
            e.stopPropagation();
        });
        $('#prod-tab a.category-link').on('click', function (e) {
            e.preventDefault();
            if ($(this).hasClass('active')) return;
            categoryItems.removeClass("active show").parent().removeClass("show");
            setTimeout(function () {
                $(this).tab('show') && ($(this).parent().addClass("show"));
            }.bind(this), 300)
        });
        $(".navbar-toggle").on("click", function (e) {
            e.preventDefault();
            let target = document.getElementById($(this).attr("data-target"));
            target && (target.classList.toggle("show"));
            if (target.classList.contains("show")) {
                $('.overlay').fadeIn();
                $('body').addClass("no-scroll");
            } else {
                $('.overlay').fadeOut();
                $('body').removeClass("no-scroll");
            }
            document.addEventListener('click', clickOutsiteNavigation, true);
        });
        $(".site-item").on("click", function (e) {
            e.preventDefault();
            setCookie("lang", $(this).attr("data-lang"), 1E4);
            let path = "${path}";
            if (path !== "" && path.indexOf("${friendlyURL}") < 0) window.location.href = path;
            else window.location.href = $(this).attr("data-href");
        });
        $(".menu__header").on("click", function (e) {
            e.preventDefault();
            $(this).parent().removeClass("show").parent().removeClass("show");
        });
        productMenu && productMenu.addEventListener("click", function (e) {
            const isDropdownSubProduct = e.target.parentNode.matches("[data-dropdown-sub-product]") || e
                .target.classList.contains("nav-link");
            if (!isDropdownSubProduct && e.target.closest('[data-dropdown-product]') !== null) return;
            let currentDropdown;
            if (isDropdownSubProduct) {
                currentDropdown = e.target.closest('[data-dropdown-product]');
                currentDropdown.classList.toggle("is-show");
                prodTabContent.classList.toggle("mask");
                var navLink = $(currentDropdown).find(".nav-link");
                navLink.length > 0 && (currentDropdown.style.setProperty("--h", navLink[0]
                    .clientHeight + "px"))
            }
            var opened = false;
            document.querySelectorAll('[data-dropdown-product].is-show').forEach(function (dropdown) {
                if (dropdown === currentDropdown) {
                    opened = true;
                    return;
                }
                dropdown.classList.remove("is-show");
            }) if (!opened) prodTabContent.classList.remove("mask");
        })
        function hasDropdownOpened(target, remove = true) {
            let hasChild = target.find(".has-child").filter("[class*='show']");
            remove && hasChild.length == 0 && (vHeader.removeClass("white-bg"));
            return hasChild.length > 0;
        }

        function changeProductMenu() {
            if (window.innerWidth < 768) {
                const tabContent = document.querySelector("#prod-tabContent");
                if (tabContent) {
                    $.each(tabContent.children, function (index, tab) {
                        categoryItems.filter("[href='#" + tab.id + "']").parent().find('.category-desc')
                            .append(tab.innerHTML);
                    })
                }
                vHeader.removeClass("hidden");
            } else {
                $('.overlay').fadeOut();
                $('body').removeClass('no-scroll');
                categoryItems.parent().find('.prod-category').remove();
            }
        }

        function clickOutsiteNavigation(selector) {
            let navMenu = document.getElementById('navigation-menu');
            if (!navMenu || navMenu.contains(selector.target)) return;
            $('.overlay').fadeOut() && (navMenu.classList.remove('show'));
            $('body').removeClass('no-scroll');
            document.removeEventListener('click', clickOutsiteNavigation, true);
        }

        function initLang(locale) {
            let cookieLang = getCookie("lang");
            if (cookieLang == null) setCookie("lang", locale["name"], 1E4);
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
            document.cookie = cname + "\x3d" + cvalue + ";" + expires + ";path\x3d/;domain\x3d.vngcloud.vn"
        };
    });
</script>