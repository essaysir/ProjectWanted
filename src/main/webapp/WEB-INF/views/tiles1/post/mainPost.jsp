<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<% 
	String ctxPath = request.getContextPath(); 
%>


<style>

    
    .JobList_cn__t_THp {
    background: #fff;
    min-height: calc(100vh - 50px);
    margin: 0px 0 0 23%;
	}

a, abbr, acronym, address, applet, article, aside, audio, b, big, blockquote, body, canvas, caption, center, cite, code, dd, del, details, dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, hgroup, html, i, iframe, img, ins, kbd, label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby, s, samp, section, small, span, strike, strong, sub, summary, sup, table, tbody, td, tfoot, th, thead, time, tr, tt, u, ul, var, video {
    margin: 0;
    padding: 0;
    border: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

div {
    display: block;
}


.CategoryNavbar_Container__MvZaR {
    padding-top: 17px;
    background: #fff;
    padding-top: 40px;
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block;
}

.CategoryNavbar_Body__1rM4_ {
    position: relative;
    display: flex;
    max-width: 1060px;
    align-items: center;
}

.JobGroup_JobGroup__H1m1m {
    display: flex;
    align-items: center;
    white-space: nowrap;
}

* {
    box-sizing: border-box;
}

button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    color: buttontext;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    text-align: center;
    cursor: default;
    background: none;
    margin: 0;
    padding: 0;
    border: 0;
}

.JobGroup_JobGroup__title__nZmec {
    padding-top: 3px;
    margin-right: 15.5px;
    font-size: 24px;
    line-height: 29px;
    font-weight: 700;
    color: #333;
}

.MoreButton_MoreButton__2UmZ8 {
    position: relative;
    border: 1px solid #e1e2e3;
    border-radius: 9999px;
    background-color: #fff;
    display: inline-flex;
    width: 26px;
    height: 26px;
    -webkit-transition: .3s;
    transition: .3s;
    flex-shrink: 0;
}



.JobCategory_JobCategory__uTt2E {
    padding-right: 20px;
    display: -ms-flexbox;
    display: flex;
    white-space: nowrap;
    overflow: hidden;
}

.JobCategory_JobCategory__btn__k3EFe {
    display: flex;
    align-items: center;
    overflow: hidden;
}

.JobCategory_JobCategory__btn__title__ixP9v {
    padding-top: 3px;
    margin-right: 15.5px;
    margin-left: 15px;
    font-size: 24px;
    line-height: 29px;
    font-weight: 400;
    color: #333;
    text-overflow: ellipsis;
    overflow: hidden;
}

.MoreButton_MoreButton__2UmZ8 {
    position: relative;
    border: 1px solid #e1e2e3;
    border-radius: 9999px;
    background-color: #fff;
    width: 26px;
    height: 26px;
    -webkit-transition: .3s;
    transition: .3s;
    -ms-flex-negative: 0;
    flex-shrink: 0;
}

.MoreButton_MoreButton__icon__L_DpL {
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
}

.JobList_contentWrapper__QiRRW {
    position: relative;
    max-width: 1060px;
}



.FilterInWdlist_container__CXp_u {
    margin-bottom: 25px;
    padding-top: 10px;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G {
    display: flex;
    align-items: center;
    flex: auto;
    justify-content: left;
    max-width: none;
    height: 70px;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_filterButton__njVLF>span:first-child {
    margin-right: 15px;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_filterButton__njVLF {
    align-items: center;
    display: inline-flex;
    height: 40px;
    padding: 0 15px!important;
    margin-bottom: 0;
    border-radius: 5px;
    border: 1px solid #ececec;
    position: relative;
}

.FilterButton_ButtonClassName__PWHFf {
    border-radius: 2px;
    border: 1px solid #e1e2e3;
    background: #fff;
    color: #333;
    font-size: 13px;
    font-weight: 400;
    padding: 9px 15px;
    display: inline-flex;
    align-items: center;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_filterButton__njVLF>span {
    font-size: 14px;
    font-weight: 400;
    letter-spacing: normal;
    color: #333;
    white-space: nowrap;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_filterButton__njVLF>span:last-of-type {
    color: #36f!important;
    font-weight: 600;
    margin-right: 0;
    overflow: hidden;
    text-overflow: ellipsis;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_filterButton__njVLF>span {
    font-size: 14px;
    font-weight: 400;
    letter-spacing: normal;
    color: #333;
    white-space: nowrap;
}

.ButtonDisplay_ButtonDisplay__4VTdg {
    font-weight: 600;
    color: #333;
}

.FilterButton_ButtonClassName__PWHFf>svg {
    margin-left: 8px;
    -webkit-transition: .3s;
    transition: .3s;
}

svg {
    width: 8;
    height: 7;
    fill: none;
}

svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;
}

.FilterButton_ButtonClassName__PWHFf {
    border-radius: 2px;
    border: 1px solid #e1e2e3;
    background: #fff;
    color: #333;
    font-size: 13px;
    font-weight: 400;
    padding: 9px 15px;
    display: inline-flex;
    -ms-flex-align: center;
    align-items: center;
}



.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_skillsFilterContainer__UZGLH, .FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_yearFilterContainer__nX3TV {
    position: relative;
    margin-right: 10px;
}

.FilterButton_ButtonClassName__PWHFf+button, .FilterButton_ButtonClassName__PWHFf+div {
    margin-left: 10px;
}

.FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_skillsFilterContainer__UZGLH, .FilterInWdlist_container__CXp_u .FilterInWdlist_innerClassName__ZOJEQ .FilterInWdlist_SelectedButtonGroup__gHL3G .FilterInWdlist_yearFilterContainer__nX3TV {
    position: relative;
    margin-right: 10px;
}

.FilterInWdlist_divider__XA0kr {
    max-width: 1060px;
    margin: 25px auto;
    background-color: rgba(236,236,236,.7);
}

.Divider_Divider__root__f2LD0 {
    height: 1px;
    margin: 15px;
    border: none;
    -ms-flex-negative: 0;
    flex-shrink: 0;
    background-color: #e1e2e4;
}

hr {
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
}

.TagFilter_TagFilter__4xc2c {
    max-width: 1060px;
    margin: 25px auto;
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block;
}

.TagList_TagList__uZBJG.isMobile {
    overflow-x: scroll;
    white-space: nowrap;
    padding-bottom: 10px;
    padding-right: 20px;
}

.TagListItem_TagListItem__3aCT9 {
    position: relative;
    height: 32px;
    padding: 8px 14px;
    border-radius: 20px;
    display: -ms-inline-flexbox;
    display: inline-flex;
    -ms-flex-pack: center;
    justify-content: center;
    -ms-flex-align: center;
    align-items: center;
    margin-right: 8px;
    font-size: 13px;
    line-height: 16px;
    font-weight: 400;
    color: #333;
    border: 1px solid transparent;
}

.TagListItem_TagListItem__3aCT9>img {
    width: 16px;
    height: 16px;
    margin-left: 5px;
}

img {
    vertical-align: middle;
}

.FilterInWdlist_divider_mo__hrhkB {
    display: none;
}

.Divider_Divider__root__f2LD0 {
    height: 1px;
    margin: 0;
    border: none;
    -ms-flex-negative: 0;
    flex-shrink: 0;
    background-color: #e1e2e4;
}



.TagList_TagList__uZBJG .slick-slider {
    width: 100%;
    margin-bottom: 0;
}

.NavButton_NavButton__j73pc.NavButton_isPrev__9usje {
    left: 0;
}

.NavButton_NavButton__j73pc {
    position: absolute;
    top: 50%;
    z-index: 10;
    left: 1030px;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
    width: 30px;
    height: 30px;
    border: 1px solid #e1e2e3;
    border-radius: 9999px;
    background-color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    right: 0;
}

.SvgIcon_SvgIcon__root__8vwon {
    display: flex;
}

.SvgIcon_SvgIcon__root__svg__DKYBi {
    -webkit-user-select: none;
    user-select: none;
    width: 1em;
    height: 1em;
    display: inline-block;
    fill: currentColor;
    flex-shrink: 0;
}

/* Slider */
.slick-slider { position: relative; display: block; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; -ms-touch-action: pan-y; touch-action: pan-y; -webkit-tap-highlight-color: transparent; }

.slick-list { position: relative; overflow: hidden; display: block; margin: 0; padding: 0; }
.slick-list:focus { outline: none; }
.slick-loading .slick-list { background: #fff url("./ajax-loader.gif") center center no-repeat; }
.slick-list.dragging { cursor: pointer; cursor: hand; }

.slick-slider .slick-track { -webkit-transform: translate3d(0, 0, 0); -moz-transform: translate3d(0, 0, 0); -ms-transform: translate3d(0, 0, 0); -o-transform: translate3d(0, 0, 0); transform: translate3d(0, 0, 0); }

.slick-track { position: relative; left: 0; top: 0; display: block; }
.slick-track:before, .slick-track:after { content: ""; display: table; }
.slick-track:after { clear: both; }
.slick-loading .slick-track { visibility: hidden; }

.slick-slide { float: left; height: 100%; min-height: 1px; display: none; }
[dir="rtl"] .slick-slide { float: right; width: 100% !important; }

.slick-slide img { display: block; }
.slick-slide.slick-loading img { display: none; }
.slick-slide.dragging img { pointer-events: none; }
.slick-initialized .slick-slide { display: block; }
.slick-loading .slick-slide { visibility: hidden; }
.slick-vertical .slick-slide { display: block; height: auto; border: 1px solid transparent; }

/* Icons */
@font-face { font-family: "slick"; src: url("./fonts/slick.eot"); src: url("./fonts/slick.eot?#iefix") format("embedded-opentype"), url("./fonts/slick.woff") format("woff"), url("./fonts/slick.ttf") format("truetype"), url("./fonts/slick.svg#slick") format("svg"); font-weight: normal; font-style: normal; }
/* Arrows */
.slick-prev, .slick-next { position: absolute; display: block; height: 20px; width: 20px; line-height: 0; font-size: 0; cursor: pointer; background: transparent; color: transparent; top: 50%; margin-top: -10px; padding: 0; border: none; outline: none; }
.slick-prev:hover, .slick-prev:focus, .slick-next:hover, .slick-next:focus { outline: none; background: transparent; color: transparent; }
.slick-prev:hover:before, .slick-prev:focus:before, .slick-next:hover:before, .slick-next:focus:before { opacity: 1; }
.slick-prev.slick-disabled:before, .slick-next.slick-disabled:before { opacity: 0.25; }

.slick-prev:before, .slick-next:before { font-family: "slick"; font-size: 20px; line-height: 1; color: white; opacity: 0.75; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }

.slick-prev { left: -25px; }
[dir="rtl"] .slick-prev { left: auto; right: -25px; }
.slick-prev:before { content: "←"; }
[dir="rtl"] .slick-prev:before { content: "→"; }

.slick-next { right: -25px; }
[dir="rtl"] .slick-next { left: -25px; right: auto; }
.slick-next:before { content: "→"; }
[dir="rtl"] .slick-next:before { content: "←"; }

/* Dots */
.slick-slider { margin-bottom: 30px; }

.slick-dots { position: absolute; bottom: -45px; list-style: none; display: block; text-align: center; padding: 0; width: 100%; }
.slick-dots li { position: relative; display: inline-block; height: 20px; width: 20px; margin: 0 5px; padding: 0; cursor: pointer; }
.slick-dots li button { border: 0; background: transparent; display: block; height: 20px; width: 20px; outline: none; line-height: 0; font-size: 0; color: transparent; padding: 5px; cursor: pointer; }
.slick-dots li button:hover, .slick-dots li button:focus { outline: none; }
.slick-dots li button:hover:before, .slick-dots li button:focus:before { opacity: 1; }
.slick-dots li button:before { position: absolute; top: 0; left: 0; content: "•"; width: 20px; height: 20px; font-family: "slick"; font-size: 6px; line-height: 20px; text-align: center; color: black; opacity: 0.25; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }
.slick-dots li.slick-active button:before { color: black; opacity: 0.75; }

.slick-list {
    position: relative;
    overflow: hidden;
    display: block;
    margin: 0;
    padding: 0;
}

.slick-track {
    position: relative;
    left: 5px;
    top: 0;
    display: block;
}

.slick-slide {
    float: left;
    height: 3%;
    min-height: 1px;
}


svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;
}

.FilterInWdlist_jobSortSelectContainer__Lgipq {
    position: relative;
}

.Selector_select__UG_Cu {
    position: relative;
}

.Selector_select__UG_Cu .Selector_customSelect__LwuqR {
    position: relative;
    width: 104px;
}

.Selector_select__UG_Cu .Selector_customSelect__LwuqR>button {
    border-radius: 4px;
    border: 1px solid #ececec;
    background-color: #fff;
    font-size: 14px;
    font-weight: 400;
    height: 40px;
    letter-spacing: normal;
    color: #000;
    padding: 0 16px;
    position: relative;
    width: 100%;
    text-align: left;
    display: flex;
    -ms-flex-pack: justify;
    justify-content: space-between;
    align-items: center;
}

.Selector_select__UG_Cu .Selector_customSelect__LwuqR>ul {
    position: absolute;
    top: 39px;
    left: 0;
    right: 0;
    z-index: 98;
    background: #fff;
    border: 1px solid #ececec;
    border-radius: 0 0 4px 4px;
}

.Selector_mobileIcon__iorZE {
    display: none;
}

.List_List__kDrrx .List_divider__eZQ4g {
    width: 100vw;
    margin-bottom: 45px;
    margin-left: calc(-50vw + 50%);
    background-color: #e1e2e3;
}

.Featured_titleStyle__gZUrR {
    font-size: 22px;
    font-weight: 600;
    line-height: normal;
    letter-spacing: -.3px;
    color: #333;
    margin: 18px 0 30px 0px;

}

.Featured_navigationBtn__NFDT3 {
    display: flex;
    -ms-flex-pack: end;
    justify-content: flex-end;
    margin: -40px 0 14px;
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>footer>h4 {
	position: relative;
    font-size: 19px;
    font-weight: 600;
    letter-spacing: -.3px;
    color: #333;
    line-height: 1.2;
    margin: 4px 0;
    overflow: hidden;
    max-height: 58px;
}

.Featured_navigationBtn__NFDT3>button:first-child {
    margin-right: 11px;
}

.ArrowButton_ArrowButton__zK5U5:disabled {
    cursor: not-allowed;
    opacity: .7;
    color: #ddd;
    border: 1px solid #eee;
}

.Featured_navigationBtn__NFDT3>button {
    width: 30px;
    height: 30px;
    min-width: 30px;
    min-height: 30px;
}

.ArrowButton_ArrowButton__zK5U5 {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 30px;
    min-width: 30px;
    height: 30px;
    min-height: 30px;
    border: 1px solid #e1e2e3;
    border-radius: 50%;
    background-color: #fff;
    -webkit-box-shadow: 0 2px 2px 0 rgba(0,0,0,.05);
    box-shadow: 0 2px 2px 0 rgba(0,0,0,.05);
    font-size: 16px;
    color: #767676;
}

button:disabled {
    background-color: -internal-light-dark(rgba(239, 239, 239, 0.3), rgba(19, 1, 1, 0.3));
    color: -internal-light-dark(rgba(16, 16, 16, 0.3), rgba(255, 255, 255, 0.3));
    border-color: -internal-light-dark(rgba(118, 118, 118, 0.3), rgba(195, 195, 195, 0.3));
}

.ArrowButton_ArrowButton__zK5U5:disabled {
    cursor: not-allowed;
    opacity: .7;
    color: #ddd;
    border: 1px solid #eee;
}

.SvgIcon_SvgIcon__root__svg__DKYBi {
    -webkit-user-select: none;
    user-select: none;
    width: 1em;
    height: 1em;
    display: inline-block;
    fill: currentColor;
    flex-shrink: 0;
}

.ArrowButton_ArrowButton__zK5U5 {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 30px;
    min-width: 30px;
    height: 30px;
    min-height: 30px;
    border: 1px solid #e1e2e3;
    border-radius: 50%;
    background-color: #fff;
    -webkit-box-shadow: 0 2px 2px 0 rgba(0,0,0,.05);
    box-shadow: 0 2px 2px 0 rgba(0,0,0,.05);
    font-size: 16px;
    color: #767676;
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji {
    margin-left: -9px;
    margin-right: -4.5px;
}

.Featured_sliderWrapper__nHmfc {
    max-width: 1060px;
    margin-bottom: 40px;
    margin-right: 9px;
    position: relative;
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>header {
    z-index: 1;
    border-radius: 3px 3px 0 0;
    overflow: hidden;
    margin: 0 9px;
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>header>.companyBg {
    height: 147px;
    border-radius: 3px 3px 0 0;
    background-position: 50%;
    background-size: cover;
    background-color: #f2f2f2;
    background-repeat: no-repeat;
    -webkit-transition: all .5s ease-in-out;
    transition: all .5s ease-in-out;
    -webkit-box-shadow: inset 0 0 0 1px rgba(0,0,0,.1);
    box-shadow: inset 0 0 0 1px rgba(0,0,0,.1);
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>footer>.logoCircle {
    position: absolute;
    top: -20px;
    left: 16px;
    width: 50px;
    height: 50px;
    background-color: #f2f2f2;
    background-position: 50%;
    background-size: cover;
    background-repeat: no-repeat;
    z-index: 0;
    -webkit-box-shadow: inset 0 0 0 1px rgba(0,0,0,.1);
    box-shadow: inset 0 0 0 1px rgba(0,0,0,.1);
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>footer {
    margin: 0 9px;
    padding: 34px 16px 0;
    height: 122px;
    border: 1px solid #e1e2e3;
    border-top: none;
    border-radius: 0 0 3px 3px;
    position: relative;
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>footer>h5 {
    color: #999;
    margin-top: 6px;
}

.Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>footer>h5, .Featured_sliderWrapper__nHmfc .Featured_slider__Bnaji .Featured_sliderItem__FY8yb>footer>p {
    font-size: 14px;
    font-weight: 400;
    letter-spacing: -.2px;
}

.List_List_container__JnQMS>ul {
    margin: -10px;
    padding: 0;
}

ol, ul {
    list-style: none;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

.List_List_container__JnQMS>ul li {
    width: 24.2%;
    padding: 10px;
    list-style: none;
    display: inline-block;
    vertical-align: top;
}

li {
    text-align: -webkit-match-parent;
}

.Card_className__u5rsb>a {
    display: block;
}

a {
   cursor: pointer;
}

.Card_className__u5rsb header {
    padding-bottom: 75%;
    position: relative;
    background-size: cover;
    background-position: 50%;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 0 0 1px rgba(0,0,0,.1);
    box-shadow: inset 0 0 0 1px rgba(0,0,0,.1);
}

.Card_className__u5rsb .body {
    padding: 14px 0;
}

.Card_className__u5rsb .body .job-card-position {
    position: relative;
    color: #333;
    font-size: 18px;
    font-weight: 600;
    line-height: 1.2;
    max-height: 2.4em;
    overflow: hidden;
    text-align: left;
    word-break: break-word;
}

.Card_className__u5rsb .body .job-card-company-name {
    color: #333;
    font-weight: 600;
}

.Card_className__u5rsb .body .job-card-company-location, .Card_className__u5rsb .body .job-card-company-name {
    font-size: 14px;
    line-height: normal;
    text-align: left;
    word-break: break-word;
    width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    margin-top: 10px;
}

a, a:active, a:hover, a:visited {
    color: #999;
    text-decoration: none;
}
.Tooltip_container__AvBvM, .Tooltip_label__P9FMp {
    position: relative;
}

.Tooltip_container__AvBvM, .Tooltip_label__P9FMp {
    position: relative;
}

.ResponseLevelLabel_veryHigh__3ArDP {
    border: 1px solid #00aead;
    color: #00aead;
}

.ResponseLevelLabel_container__dJphx {
    border-radius: 2px;
    background-color: #fff;
    display: inline-block;
    font-size: 10px;
    font-weight: 600;
    height: 19px;
    line-height: 19px;
    margin-top: 4px;
    padding: 0 5px;
}

.ResponseLevelLabel_container__dJphx>span {
    position: relative;
    line-height: 19px;
    top: -1px;
}

.Tooltip_tooltipContent__6exdr {
    color: #333;
    font-size: 12px;
    font-weight: 400;
    min-height: 40px;
    height: auto;
    line-height: normal;
    position: absolute;
    padding: 11px 12px;
    background: #fff;
    border: 1px solid #999;
    z-index: 1;
    display: none;
    white-space: nowrap;
    top: calc(100% + 4px);
    left: 50%;
    -webkit-transform: translateX(-50%);
    transform: translateX(-50%);
}

.Card_className__u5rsb .body .job-card-company-location {
    font-weight: 400;
    color: #999;
}

.Card_className__u5rsb .body .job-card-company-location, .Card_className__u5rsb .body .job-card-company-name {
    font-size: 14px;
    line-height: normal;
    text-align: left;
    word-break: break-word;
    width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    margin-top: 10px;
}

.Card_className__u5rsb .body .addressDot {
    margin: 0 3px;
    top: -4px;
    position: relative;
}

.Card_className__u5rsb .body .job-card-company-location, .Card_className__u5rsb .body .job-card-company-name {
    font-size: 14px;
    line-height: normal;
    text-align: left;
    word-break: break-word;
    width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    margin-top: 10px;
}

.Card_className__u5rsb .body .reward {
    margin-top: 10px;
    color: #333;
    font-size: 14px;
    font-weight: 500;
    text-align: left;
    word-break: break-word;
    width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}


.JobList_TypeTestBanner__YC7vA {
    margin: 35px 10px 50px;
}

.TypeTestBannerRow_TypeTestBannerRow__hAqWf {
    cursor: pointer;
    background: #0d99ff;
    color: #fff;
    border-radius: 10px;
    padding: 28px 0 22px 120px;
    background-image: url(https://static.wanted.co.kr/images/type-test/typetest-banner-image.png);
    background-size: auto 100%;
    background-position: 100%;
    background-repeat: no-repeat;
}

.contaniner {
    margin-left: auto;
}

.Selector_mobileSelect__vtRFB {
    display: none;
}

-- 모달
.Modal_root__aEM8D {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    position: fixed;
    overflow: hidden;
    z-index: 1400;
}

.Modal_modalContent__0zuTn {
    border-radius: 5px;
    background-color: #fff;
    position: absolute;
    overflow: hidden;
    top: 25%;
    left: 50%;
    width: 100%;
    max-width: 500px;
    max-height: calc(100vh - 150px);
    -webkit-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    /* z-index: 5; */
    z-index: 1050;
    
    overflow-y: auto;
}

.LocationsPopup_container___6zbz>div:first-of-type {
    top: 0;
    left: 0;
    right: 0;
    background: #fff;
    height: 54px;
    border-bottom: none;
}

.Header_Header__0d6dF {
    height: 54px;
    padding: 16px 20px;
    position: relative;
    border-bottom: 1px solid #ececce;
    color: #333;
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    word-wrap: break-word;
}

.LocationsPopup_container___6zbz>div:first-of-type .LocationsPopup_ResetButton__Ko46W {
    left: 0;
    right: auto;
    font-size: 14px;
    font-weight: 400;
    color: #999;
    text-align: left;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-pack: center;
    justify-content: center;
    -ms-flex-align: center;
    align-items: center;
}

.Header_Header__0d6dF a, .Header_Header__0d6dF button {
    position: absolute;
    top: 50%;
    right: 5px;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
    padding: 15px;
    line-height: 0;
}

.LocationsPopup_container___6zbz>div:first-of-type .LocationsPopup_ResetButton__Ko46W svg {
    margin-right: 5px;
}

.FilteredCount_filteredCount__3PCO5 {
    background-color: #36f;
    border-radius: 10px;
    color: #fff;
    display: inline-block;
    font-size: 12px;
    font-weight: 600;
    width: 20px;
    height: 20px;
    line-height: 20px;
    margin-left: 7px;
    position: relative;
    top: -2px;
    z-index: 1;
}

.IconButton_IconButton__label__ZcWfp {
    width: 100%;

}

.IconButton_IconButton__interaction__I48Mv {
    overflow: hidden;
    position: absolute;
    z-index: 0;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: 0;
    background-color: #171717;
    -webkit-transition: opacity .2s ease;
    transition: opacity .2s ease;
    will-change: opacity;
}

.LocationsPopup_container___6zbz .LocationsPopup_bodyContainer__FyLa2.LocationsPopup_hasSelectedLocationArea__Uicwe {
    border-top: 0;
    max-height: 300px;
    min-height: 276px;
    height: calc(100vh - 389px);
}

.Selector_container__tN_Jj {
    margin: 10px 0 30px;
}

.Selector_header__uaMYg {
    font-size: 16px;
    font-weight: 400;
    color: #999;
    margin: 0 0 10px;
}

.Selector_select__UG_Cu {
    position: relative;
}

.Locations_container__hZ3Ul {
    display: flex;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto {
    -ms-flex: 1 1;
    flex: 1 1;
    max-width: 50%;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto>h6 {
    font-size: 14px;
    font-weight: 500;
    font-stretch: normal;
    font-style: normal;
    line-height: 23px;
    letter-spacing: normal;
    color: #767676;
    margin-bottom: 8px;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto>ul {
    max-height: 230px;
    min-height: 98px;
    height: calc(100vh - 567px);
    overflow-y: auto;
    border: 1px solid #e1e2e3;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto>ul>li {
    height: 27px;
    line-height: 27px;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto>ul>li>button {
    width: 100%;
    text-align: left;
    padding: 0 14px;
    font-size: 15px;
    font-weight: 400;
    line-height: 27px;
    letter-spacing: normal;
    color: #333;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto>h6 {
    font-size: 14px;
    font-weight: 500;
    font-stretch: normal;
    font-style: normal;
    line-height: 23px;
    letter-spacing: normal;
    color: #767676;
    margin-bottom: 8px;
}

.Locations_container__hZ3Ul .Locations_column__Ibvto:nth-of-type(2n)>ul {
    border-left: none;
}

.LocationsPopup_container___6zbz .LocationsPopup_footerContainer__49FsP.LocationsPopup_hasSelectedLocationArea__Uicwe {
    border-top: 0;
    height: 225px;
    padding-top: 0;
}

.SelectedLocations_selectedLocations__6PVR9 {
    height: 135px;
    background: #f6f6f6;
    margin: 0 -20px 20px;
    padding: 5px 20px;
    position: relative;
}

.SelectedLocations_selectedLocations__6PVR9 .SelectedLocations_listContainer__46isv {
    height: 88px;
    overflow-y: auto;
}

.SelectedLocations_selectedLocations__6PVR9 .SelectedLocations_listContainer__46isv .SelectedLocations_locationItem__8j9AK {
    display: inline-flex;
    margin: 10px 6px 0 0;
    padding: 0 16px 0 15px;
    background: #fff;
    border: 1px solid #36f;
    border-radius: 17px;
    line-height: 32px;
    font-size: 13px;
    font-weight: 600;
    font-style: normal;
    letter-spacing: normal;
    color: #36f;
}

.SelectedLocations_selectedLocations__6PVR9>p {
    position: absolute;
    bottom: -5px;
    left: 58px;
    line-height: 27px;
    font-size: 11px;
    font-weight: 400;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: normal;
    color: #999;
}

.CommonFooter_container__PQC4V .CommonFooter_button__sCywr {
    color: #fff;
    width: 85%;
    height: 50px;
    background-color: #36f;
    border-radius: 25px;
    font-size: 16px;
    font-weight: 600;
    line-height: 50px;
    letter-spacing: normal;
    text-align: center;
    margin: 0 7%;
}

ol, ul {
    list-style: none;
}

.Body_body__KI0OY {
    padding: 20px;
}

.modal-backdrop {
    
    z-index: 1045 !important;
    
}

#exampleModal.hidden {
  display: none;
}


-- 슬라이더 작업

sup {
  font-size: 80%;
  vertical-align: top;
  position: relative;
  top: 1px;
}

.sliderwrapper {
  display: table;
  width: 100%;
  height: 100%;
  margin-top: 45px;
}

.slidercontainer {
  display: table-cell;
  vertical-align: middle;
  text-align: center;
}

.slider-wrapper {
  width: 500px;
  display: inline-block;
  position: relative;
  font-family: arial;
  margin-top: 45px;
}

.ui-slider {
  background: #efefef;
  border: 1px solid #d2d2d2;
  height: 10px;
  position: relative;
  border-radius: 100px;
}

.ui-slider-range {
  background: rgb(51, 102, 255);
  height: 10px;
  position: absolute;
  
  transform: translateY(-1px);
}
.ui-slider-range:after {
  content: "";
  width: 100%;
  height: 1px;
  background: #fff;
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0.3;
}

.ui-slider-handle {
  background: #555;
  position: absolute;
  width: 20px;
  height: 20px;
  top: 50%;
  display: block;
  transform: translate(-50%, -50%);
  border-radius: 100px;
  z-index: 10;
  background: linear-gradient(#555, #454545);
  cursor: move;
  /* fallback if grab cursor is unsupported */
  cursor: grab;
  cursor: -moz-grab;
  cursor: -webkit-grab;
  box-shadow: inset -2px -2px 6px 2px rgba(0, 0, 0, 0.1);
  transition: width 0.1s;
}
.ui-slider-handle:focus {
  outline: none;
}
.ui-slider-handle:active {
  cursor: grabbing;
  cursor: -moz-grabbing;
  cursor: -webkit-grabbing;
}

.ui-state-active {
  width: 22px;
}

.range-wrapper {
  position: absolute;
  top: -50px;
  left: 50%;
  transform: translateX(-50%);
}

.range {
  background: #fff;
  white-space: nowrap;
  border: 1px solid #d2d2d2;
  border-radius: 2px;
  font-size: 13px;
  letter-spacing: 0.02em;
  color: #555;
  width: 150px;
  z-index: 10;
  position: relative;
}
.range:after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translateX(-50%);
  border-left: 67px solid transparent;
  border-right: 67px solid transparent;
  border-top: 6px solid #d2d2d2;
}

.range-value {
  width: 74px;
  padding: 8px 0;
  text-align: center;
  display: inline-block;
  transition: background 0.1s;
}

.range-divider {
  width: 1px;
  display: inline-block;
}
.range-divider:after {
  position: absolute;
  top: 0;
  left: 50%;
  width: 1px;
  height: 100%;
  background: #d2d2d2;
  content: "";
}

.range-alert {
  width: 16px;
  height: 16px;
  position: absolute;
  top: 50%;
  right: 0;
  transform: translateY(-50%);
  background: #fff;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border: 1px solid #d2d2d2;
  color: #0E0E0E;
  line-height: 15px;
  transition: right 0.2s;
}
.range-alert.active {
  right: -15px;
}

.marker {
  position: absolute;
  top: 100%;
  padding-top: 10px;
  font-size: 13px;
  color: #555;
  letter-spacing: 0.05em;
  transform: translateX(-50%);
}
.marker:after {
  content: "";
  width: 1px;
  height: 8px;
  background: #d2d2d2;
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
}

.marker-0:after {
  display: none;
}

.marker-25 {
  left: 25%;
}

.marker-50 {
  left: 50%;
}

.marker-75 {
  left: 75%;
}

.marker-100 {
  right: 0;
  transform: translateX(50%);
}
.marker-100:after {
  display: none;
}

.YearsPopup_container___s3Uf {
    position: absolute;
    width: 590px;
    height: 210px;
    overflow: hidden;
    background-color: #fff;
    z-index: 99;
    border: 1px solid #e1e2e4;
    -webkit-box-shadow: 0 4px 8px rgba(0,0,0,.15);
    box-shadow: 0 4px 8px rgba(0,0,0,.15);
    border-radius: 5px;
    left: -12px;
    top: 8px;
    display: none;
}

.Divider_Divider__root__f2LD0 {
    height: 1px;
    margin: 25px 0px;
    border: none;
    -ms-flex-negative: 0;
    flex-shrink: 0;
    background-color: #e1e2e4;
}

.Footer_Footer__xQYVu {
    padding: 10px;
    border-color: #ececec;
}

.Footer_Footer__btnBox__U8lwy {
    text-align: right;
}

.Footer_Footer__btnBox__cancle__Kf9Kv {
    color: #767676;
    font-weight: 600;
    padding-right: 10px;
    min-width: 0;
}

.Button_Button__textSizeSmall__VSAkQ {
    font-size: 14px;
    font-weight: 600;
}

.Button_Button__text__GCOTx, .Button_Button__textPrimary__hcFzK {
    --button-color: rgb(51, 102, 255);
    color: var(--button-color);
}

.Button_Button__text__GCOTx {
    padding: 4px 8px;
    border-radius: 4px;
}

.Button_Button__text__GCOTx, .Button_Button__textPrimary__hcFzK {
    --button-color:  rgb(51, 102, 255);
    color: var(--button-color);
}

.Button_Button__root__V1ie3 {
    --button-color: #171717;
    position: relative;
    display: -ms-inline-flexbox;
    display: inline-flex;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: center;
    justify-content: center;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    line-height: normal;
    border: none;
    background-color: none;
    cursor: pointer;
}

.Button_Button__textAssistive__Dx57x {
    --button-color: #8a8a8a;
    color: var(--button-color);
}

.Button_Button__interaction__kkYaa {
    overflow: hidden;
    position: absolute;
    z-index: 0;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    border-radius: inherit;
    opacity: 0;
    background-color: var(--button-color);
    -webkit-transition: opacity .2s ease;
    transition: opacity .2s ease;
    will-change: opacity;
}


-- 드랍다운 추가



.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 2;
}

.dropdown-content a {
  /* color: black; */
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}

.JobGroupOverlay_JobGroupOverlay__ZEs7N.isKR {
    max-width: 190px;
}

.JobGroupOverlay_JobGroupOverlay__ZEs7N {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    top: 40px;
    /* overflow-y: hidden; */
    max-width: 220px;
    height: 70vh;
    background-color: #fff;
    border: 1px solid #e1e2e3;
    -webkit-box-shadow: 0 4px 8px rgba(0,0,0,.15);
    box-shadow: 0 4px 8px rgba(0,0,0,.15);
    border-radius: 5px;
    z-index: 99;
    padding: 15px 0;
}

.JobGroupOverlay_JobGroupOverlay__all__1x5HT {
    font-size: 16px;
    padding: 10px 0 10px 25px;
    display: flex;
    align-items: center;
    color: #333;
}

.JobGroupItem_JobGroupItem__xXzAi.active {
    color: #36f;
    font-weight: 500;
}

.JobGroupItem_JobGroupItem__xXzAi {
    display: block;
    align-items: center;
    font-size: 16px;
    /* color: #333; */
    padding: 11px 25px 9px;
    width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 0px;
}

a, a:active, a:hover, a:visited {
    color: #999;
    text-decoration: none !important;
}

a {
    cursor: pointer;
}    

/* 드랍다운_2 시작 */

.JobCategoryOverlay_JobCategoryOverlay__rkFLO {
    position: absolute;
    display: none;
    left: 100px;
    bottom: 0;
    top: 40px;
    width: calc(100% - 140px);
    max-width: 910px;
    
    height: -webkit-fit-content;
    height: fit-content;
    background-color: #fff;
    border: 1px solid #e1e2e4;
    -webkit-box-shadow: 0 4px 8px rgba(0,0,0,.15);
    box-shadow: 0 4px 8px rgba(0,0,0,.15);
    border-radius: 5px;
    z-index: 99;
}

.JobCategoryOverlay_JobCategoryOverlay__top__RppY3 {
    padding: 25px 25px 8px;
    max-width: 910px;
}

.JobCategoryOverlay_JobCategoryOverlay__top__title__3tneN {
    color: #171717;
    font-weight: 400;
    font-size: 12px;
    line-height: 14.4px;
    margin-bottom: 10px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.JobCategoryOverlay_JobCategoryOverlay__top__list__amyf6 {
    display: flex;
    flex-wrap: wrap;
}

.JobCategoryItem_JobCategoryItem__oUaZr {
    height: 32px;
    margin-right: 10px;
    margin-bottom: 12px;
    border: 1px solid #f2f4f7;
    background: #f2f4f7;
    border-radius: 20px;
    padding: 8px 14px;
    font-size: 13px;
    line-height: 16px;
    font-weight: 400;
    color: #333;
}

.JobCategoryItem_clicked__cmZll { /* 기술스택 선택시 변경 css */
    border: 1px solid #36f;
    color: #36f;
    background-color: #fff;
    font-weight: 600;
}

.JobCategoryOverlay_JobCategoryOverlay__bottom__6Q_OM {
    padding: 16px;
    text-align: right;
    border-top: 1px solid #ececec;
    background-color: #fff;
}

.JobCategoryOverlay_JobCategoryOverlay__bottom__btn__GliIw {
    width: 160px;
}

.Button_Button__containedSizeMedium__c2z9c, .Button_Button__outlinedSizeMedium__k3ora {
    padding: 0 20px;
    min-width: 64px;
    height: 40px;
    font-size: 15px;
    font-weight: 600;
}

.Button_Button__containedDisabled__qiqtc {
    cursor: default;
    background-color: #f4f4f5;
    color: #c4c4c4;
}

.Button_Button__containedDisabled__qiqtc {
    cursor: default;
    background-color: #f4f4f5;
    color: #c4c4c4;
}

.Button_Button__contained__toUI5, .Button_Button__containedPrimary__gFaT9 { /* 태그선택시 버튼태그 css */
    color: #fff;
    background-color: #36f;
}

.Button_Button__contained__toUI5 {
    border-radius: 1000px;
    border: none;
}

.Button_Button__disabled__2eyyF {
    pointer-events: none;
}

.Button_Button__root__V1ie3 {
    --button-color: #171717;
    position: relative;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    line-height: normal;
    border: none;
    background-color: none;
    cursor: pointer;
}

.Button_Button__label__1Kk0v {
    width: 100%;
    font-size: inherit;
    font-weight: inherit;
    display: inherit;
    align-items: inherit;
    justify-content: inherit;
    color: inherit;
}

/* 기술 스택 css 시작 */

.SkillsPopup_container__YmAtm {
    position: absolute;
    z-index: 99;
    left: -1px;
    top: 45px;
    width: 584px;
    height: 469px;
    border: 1px solid #e1e2e4;
    border-radius: 5px;
    background-color: #fff;
    -webkit-box-shadow: 0 4px 8px rgba(0,0,0,.15);
    box-shadow: 0 4px 8px rgba(0,0,0,.15);
    overflow: hidden;
}

.SkillsPopup_container__YmAtm .SkillsPopup_bodyContainer__ys1JY {
    height: 396px;
    padding: 26px 20px 20px;
    overflow: auto;
}

.SkillsSearch_SkillsSearch__At_ER {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: center;
    justify-content: center;
    width: 100%;
    height: 44px;
}

.SkillsSearch_SkillsSearch__At_ER>input {
    width: inherit;
    height: inherit;
    padding: 14px 20px;
    border: 1px solid #ccc;
    border-radius: 25px;
    background: #fff;
    color: #333;
    font-size: 13px;
    font-weight: 600;
    line-height: 16px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.SkillsSearch_SkillsSearch__icon__peLwi {
    position: absolute;
    top: 10px;
    right: 20px;
    display: inline-grid;
    -ms-flex-align: center;
    align-items: center;
    height: 24px;
    padding-left: 15px;
    border-left: 1px solid #ececec;
}

.RecommendedSkills_RecommendedSkills__EeSZ9 {
    display: flex;
    flex-direction: column;
}

.RecommendedSkills_RecommendedSkills__EeSZ9>h4 {
    width: 100%;
    margin: 30px 0 14px;
    font-size: 14px;
    font-weight: 500;
    line-height: 17px;
}

.RecommendedSkills_RecommendedSkills__EeSZ9>ul {
    display: flex;
    flex-wrap: wrap;
    margin-bottom: 10px;
}

.RecommendedSkills_RecommendedSkills__EeSZ9>ul>li {
    margin: 0 10px 10px 0;
}

.SkillTag_SkillTag__tURfQ {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    height: 32px;
    padding: 8px 14px;
    border: 1px solid #f2f4f7;
    border-radius: 16px;
    margin: 0;
    background: #f2f4f7;
    color: #333;
    font-size: 13px;
    font-weight: 400;
    line-height: 16px;
    cursor: pointer;
}

.SkillTag_SkillTag__tURfQ>span {
    margin-left: 4px;
    color: inherit;
}

.SelectedSkills_SelectedSkills__selected___Tg9D {
    width: 100%;
    min-height: 102px;
    padding: 14px;
    border-radius: 5px;
    background-color: #f8f8f8;
}

.SelectedSkills_SelectedSkills__selected___Tg9D>ul {
    display: flex;
    flex-wrap: wrap;
    margin-bottom: 10px;
}

.SelectedSkills_SelectedSkills__selected___Tg9D>ul>li {
    margin: 0 10px 10px 0;
}

.SkillTag_SkillTag__tURfQ.selected {
    border: 1px solid #36f;
    background: #fff;
    color: #36f;
    font-weight: 600;
}

.SkillTag_SkillTag__tURfQ>span {
    margin-left: 4px;
    color: inherit;
}

.SelectedSkills_SelectedSkills__OWCLm>p {
    width: 100%;
    margin-top: 10px;
    font-size: 12px;
    font-weight: 400;
    line-height: 14px;
    color: #939393;
}

.Footer_Footer__rgOdb {
    padding: 10px;
    border-color: #ececec;
}

.Footer_Footer__btnBox__cO3zF {
    text-align: right;
}

.Footer_Footer__btnBox__cancle__oMWEp {
    color: #767676;
    font-weight: 600;
    padding-right: 10px;
    min-width: 0;
}

.Button_Button__textSizeSmall__VSAkQ {
    font-size: 14px;
    font-weight: 600;
}

.Button_Button__textAssistive__Dx57x {
    --button-color: #8a8a8a;
    color: var(--button-color);
}

.Button_Button__text__GCOTx, .Button_Button__textPrimary__hcFzK {
    --button-color: #36f;
    color: var(--button-color);
}

.Button_Button__text__GCOTx {
    padding: 4px 8px;
    border-radius: 4px;
}

.Button_Button__interaction__kkYaa {
    overflow: hidden;
    position: absolute;
    z-index: 0;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    border-radius: inherit;
    opacity: 0;
    background-color: var(--button-color);
    -webkit-transition: opacity .2s ease;
    transition: opacity .2s ease;
    will-change: opacity;
}

.Button_Button__textSizeSmall__VSAkQ {
    font-size: 14px;
    font-weight: 600;
}

ol, ul {
    list-style: none;
}


/* 기술스택 css */
section#skillSearch {
	display:none;
	position: absolute;
    z-index: 99;
    left: -1px;
    top: 45px;
    width: 584px;
    height: 469px;
    border: 1px solid #e1e2e4;
    border-radius: 5px;
    background-color: #fff;
    -webkit-box-shadow: 0 4px 8px rgba(0,0,0,.15);
    box-shadow: 0 4px 8px rgba(0,0,0,.15);
    overflow: hidden;
    }
    div.search-wrapper{
    	padding: 26px 20px 20px 20px ; 
        height: 396px;
  		overflow: auto;
    }
    
    input#search-skill:not(:focus) { /* 커서 올라가기 전 */
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-radius: 25px;
	    font-size: 14px;
    	font-weight: 400;
	}
	input#search-skill::placeholder { /* 커서 올라가기 전 placeholder 색상 변경 */
		color: #e1e2e3;
	}
	
	input#search-skill:focus { /* 커서 올라간 후 */
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-color: blue;
	    border-radius: 25px;
	    font-size: 14px;
    	font-weight: 400;
	}
    h4.recommend{
        font-size: 14px;
   		font-weight: 500;
   		 line-height: 17px;
    	margin: 0px 0px 14px;
    	color: rgb(51, 51, 51) ;
    }
    
    div.div_skill{
        display: inline-flex;
	    align-items: center;
	    justify-content: center;
	    height: 32px;
	    padding: 8px 14px;
	    border: 1px solid #f2f4f7;
	    border-radius: 16px;
	    margin: 0;
	    background: #f2f4f7;
	    color: #333;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 16px;
	    cursor: pointer;
    }
    
    button.btn-skill{
	    margin: 0 !important ; 
	    padding: 0 !important;
	    border: 0 !important;
	    background: none !important;
	    cursor: pointer !important;
        border: 0px !important;
    	border-radius: 20px !important;
    }
     button.btn-delete{
	    margin: 0  ; 
	    padding: 0 ;
	    border: 0 ;
	    background: none ;
	    cursor: pointer ;
        border: 0px ;
    	border-radius: 20px ;
    }
    
    
    ul#recommendList , ul#resultList {
    	list-style-type: none ; 
    	display : flex; 
    	 flex-wrap: wrap; /*  ul 을 감싸고 있는 Div 범위를 초과하면 다음 줄로 내리기 위한 설정*/
    
    
    }
    li.li-skill{
    	margin : 0px 10px 10px 0px ; 
    }
    
    div.data-input{
    		width: 100%;
		    min-height: 102px;
		    padding: 14px;
		    border-radius: 5px;
		    background-color: #f8f8f8;
    }
    p.recommend{
        width: 100%;
	    margin-top: 10px;
    	font-size: 12px;
    	font-weight: 400;
    	line-height: 14px;
    	color: #939393;
    }
	button#section-cancle{
		color: #767676;
	    font-weight: 600;
	    padding-right: 10px;
	    min-width: 0;
	    font-size: 14px;
		display: inline-flex;
	    align-items: center;
	    background-color : #fff ;
	    justify-content: center;
	    vertical-align: middle;
	    box-sizing: border-box;
	    line-height: normal;
	    border: none;
	    cursor: pointer;
	}
	button#section-adjust{
	    margin: 0;
    	padding: 0;
    	border: 0;
		color:#36f;
		background-color: #fff ;
		font-size: 14px;
    	font-weight: 600;
	}
	div.search-result{
		  position : absolute;  
		  top: 85px; /* 혹은 다른 원하는 위치로 조정 */
		  left: 17px ;
		  
		  z-index: 1; /* 다른 요소들보다 위에 표시되도록 설정 */
		  background-color: white;
		    border: 1px solid #f2f4f7;
		  /* 추가적인 스타일링을 원하는 경우 여기에 작성해주세요. */
			height: 170px ;
			width:  530px ; 
			/* justify-content: center;
  			align-items: center;
	    	display: flex; */
		
	}
	p.search-answer-none{
			text-align: center ;
			font-size: 14px;
			color: #767676;
	    	font-weight: 600;
	}
	ul.search-answer{
		list-style-type: none ; 
		padding-left : 0px ; 
	
	}
	.search-answer li:hover , .search-answer li:focus {
  		background-color: lightgray;
	}
	li.search-answer-li{
		height: 42px ;
	    padding-left: 17px;
    	padding-top: 8px;
	}
	ul#insertList{
		list-style-type: none ; 
    	display : flex; 
    	flex-wrap: wrap; /*  ul 을 감싸고 있는 Div 범위를 초과하면 다음 줄로 내리기 위한 설정*/
	}
	div.div_insert_skill{
		border: 1px solid #36f;
	    background: #fff;
	    color: #36f;
	    font-weight: 600;
	    display: inline-flex;
   		 align-items: center;
	    justify-content: center;
    	height: 32px;
    	padding: 8px 14px;
    	border-radius: 16px;
   		 margin: 0;
    	font-size: 13px;
    	line-height: 16px;
    	cursor: pointer;
	}
/* 기술스택 css 끝 */	




</style>


<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 
<script src="../js/bootstrap.bundle.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function(){
       
    	// Joblist 불러오기
    	getJobList();
    	
    	
    	// postlist 불러오기
    	getPostList();
    	
    	// 기술스택 불러오기
    	settingSearchSkill();
    	
    	// 슬릭 시작
    	$('.slick-track').slick({
        	variableWidth: true,
            infinite: true,
            slidesToShow: 9,
            slidesToScroll: 3,
            speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
            arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
            //dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
            //autoplay : true,			// 자동 스크롤 사용 여부
            //autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
            //pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
            //vertical : false,		// 세로 방향 슬라이드 옵션
            nextArrow : "<button type='button' class='NavButton_NavButton__j73pc NavButton_isPrev__9usje' aria-label='previous button'><span class='SvgIcon_SvgIcon__root__8vwon'><svg class='SvgIcon_SvgIcon__root__svg__DKYBi' viewBox='0 0 18 18'><path d='m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z'></path></svg></span></button>",		// 이전 화살표 모양 설정
            prevArrow : "<button type='button' class='NavButton_NavButton__j73pc NavButton_isNext__m3fGk' aria-label='next button'><span class='SvgIcon_SvgIcon__root__8vwon'><svg class='SvgIcon_SvgIcon__root__svg__DKYBi' viewBox='0 0 18 18'><path d='m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z'></path></svg></span></button>",		// 다음 화살표 모양 설정
            //dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
            draggable : true 
        });
        
        //슬라이더 시작

        
    	// Initiate Slider
  	  $('#slider-range').slider({
  	    range: true,
  	    min: 0,
  	    max: 10,
  	    step: 1,
  	    values: [0, 10]
  	  });

  	  // Move the range wrapper into the generated divs
  	  $('.ui-slider-range').append($('.range-wrapper'));

  	  // Apply initial values to the range container
  	  $('.range').html('<span class="range-value"><sup></sup>' + $('#slider-range').slider("values", 0).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '년</span><span class="range-divider"></span><span class="range-value"><sup></sup>' + $("#slider-range").slider("values", 1).toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '년</span>');

  	  

  	  $('#slider-range').slider({
  	    slide: function(event, ui) {

  	      // Update the range container values upon sliding

  	      $('.range').html('<span class="range-value"><sup></sup>' + ui.values[0].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '년</span><span class="range-divider"></span><span class="range-value"><sup></sup>' + ui.values[1].toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") + '년</span>');

  	      // Get old value
  	      var previousVal = parseInt($(this).data('value'));

  	      // Save new value
  	      $(this).data({
  	        'value': parseInt(ui.value)
  	      });

  	     

  	      if (ui.values[1] === 10) {
  	        if (!$('.range-alert').hasClass('active')) {
  	          $('.range-alert').addClass('active');
  	        }
  	      } else {
  	        if ($('.range-alert').hasClass('active')) {
  	          $('.range-alert').removeClass('active');
  	        }
  	      }
  	    }
  	  });

  	  // Prevent the range container from moving the slider
  	  $('.range, .range-alert').on('mousedown', function(event) {
  	    event.stopPropagation();
  	  });
  	  
  	  //
       

    }); // end of document
    
    //슬라이더 윗 버튼  
    function sliderfunc() {
		
		 if ($('.sliderwrapper').css('display') == 'table') {
	            $('.sliderwrapper').css('display', 'none');
	        } else {
	            $('.sliderwrapper').css('display', 'table');
	        }
		
	}
    
    // 드랍다운
    function dropdownfunc() {
  	  document.getElementById("myDropdown").classList.toggle("show");
  	  
  	}
    
    function dropdownfunc2() {
    	if ($('.JobCategoryOverlay_JobCategoryOverlay__rkFLO').css('display') == 'table') {
            $('.JobCategoryOverlay_JobCategoryOverlay__rkFLO').css('display', 'none');
        } else {
            $('.JobCategoryOverlay_JobCategoryOverlay__rkFLO').css('display', 'table');
        }
    	
    }
    
    // joblist 가져오기
    function getJobList() {
		$.ajax({
			url: "/wanted/getJobList",
			type: "get",
			dataType: "json",
			success: function (json) {
				// console.log(JSON.stringify(json));
				let html = "" //"<section role='navigation' id='myDropdown' class='dropdown-content JobGroupOverlay_JobGroupOverlay__ZEs7N isKR'>";
				 html += " <ul> "
						+ "<li><a href='/wanted/mainPost' class='JobGroupOverlay_JobGroupOverlay__all__1x5HT'>전체</a></li>";
						
						
				for (let i = 0; i < json.JobList.length; i++) {
					 // console.log(json.JobList[i].job_name);
					 // console.log(json.JobList[i].job_code);
					 html += "<li>" +
							"<a onclick='getDutyList_post("+json.JobList[i].job_code+")' class='JobGroupItem_JobGroupItem__xXzAi'>" +
							json.JobList[i].job_name +
							"</a></li>" ; 
					
					/* html += "<li>" +
							"<a href='/wanted/getPostList?"+json.JobList[i].job_code+"' class='JobGroupItem_JobGroupItem__xXzAi'>" +
							json.JobList[i].job_name +
							"</a></li>" ;  */		
							
				}
				html += "</ul>"
				
				$("section#myDropdown").html(html);


			},
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}


		});
	}
    
    
    // joblist 선택된 값의 dutylist 가져오기
    function getDutyList_post(job_code) {
    	console.log(job_code);
    	  $.ajax({
			url: "/wanted/getDutyList_post",
			type: "get",
			data: {"job_code":job_code},
			dataType: "json",
			success: function (json) {
				console.log(JSON.stringify(json));

			},
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			} 


		}); 
    }
    
    function getPostList() {
		$.ajax({
			url: "/wanted/getPostList",
			type: "get",
			dataType: "json",
			success: function (json) {
				 //console.log(JSON.stringify(json));
				let html = ""
				 html += " <ul id='job-list'> ";
						
						
				for (let i = 0; i < json.PostList.length; i++) {
					//console.log(json.PostList[i].SUBJECT);
					// 나중에 이미지는 url로 원티드에서 그냥 가져와서 디비 넣던지 할것.
					html += "<li>" +
							"<div class='Card_className__u5rsb'><a href='/postdetail/"+json.PostList[i].post_code+"' class='' >" +
							"<header style='background-image: "+json.PostList[i].image+" '></header>" +
							"<div class='body'>"+
							"<div class='job-card-position'>"+json.PostList[i].subject+"</div>"+
							"<div class='job-card-company-name'>"+json.PostList[i].name+"</div>"+
							"<div class='Tooltip_container__AvBvM'><button class='Tooltip_label__P9FMp' type='button'>"+
							"<div class='ResponseLevelLabel_container__dJphx ResponseLevelLabel_veryHigh__3ArDP'><span>응답률 매우 높음</span></div>"+
							"<div class='Tooltip_tooltipContent__6exdr'>지원 후 응답받을 확률이 95% 이상입니다.</div>"+
							"</button></div>"+
							"<div class='job-card-company-location'>"+json.PostList[i].region_name+"<span class='addressDot'>.</span><span>"+json.PostList[i].region_detail_name+"</span></div>"+
							"</div></a></div></li>"
					
							
				}
				html += "</ul>"
				
				$("div.List_List_container__JnQMS").html(html);


			},
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}


		});
	}
    
    
    
    // 기술스택 시작
    
    let insert_count = 0 ;  // 최대 다섯개까지만 선택할 수 있게 해주는 COUNT
	function settingSearchSkill(){
		buttonActive();
	 	getSkil();
	 	$("p.search-answer-none").hide();
	 	$("div.search-result").hide();
		$("input#search-skill").on('input', searchSkill );
		
		/// 밑의 방식과 같이 되어있는 이유는 밑의 함수에서 
		// $(this) 를 사용하기 위해서 다음과 같이 실행중이다. 
		$(document).on('click', 'li.search-answer-li', function(){
			insertSkill.call(this, "list")
		});
		$(document).on('click' , 'button.btn-skill' , function(){
			 insertSkill.call(this, "button")
		});
		
		$(document).on('click' , 'button.btn-delete' , function(){
			deleteSkill.call(this)
		});
		
		$(document).on('click', 'button#section-cancle' , function(){
			sectionClose.call(this)				
		})
		
		$(document).on('click', 'button#section-adjust' , function(){
			sectionAdjust.call(this)				
		})
		
	} // END OF FUNCTION
	
	
	function buttonActive(){
		$("#skill").click(function() {
		    $("section#skillSearch").toggle();
		  }); 	
	
	} // END OF FUNCTION buttonActive 
	
	function getSkil(){
		let html = "" ;
		$.ajax({
			url: "/wanted/getSkill",
			type: "get",
			dataType:"json",
			success: function (result) {
			   //  console.log(JSON.stringify(result));
				// 버튼 추가를 위한 반복문
			    $.each(result, function(index, skill) {
			        html += '<li class="li-skill">' +
			                        '<button type="button" class="btn-skill" id="btn-skill-'+skill.tech_code+ '">' +
			                            '<div class="div_skill">' +
			                                skill.tech_name +
			                                '<input type="hidden" class="tech_code" value=" '+skill.tech_code+' "/> '+
			                                '<span style="margin-left:4px; margin-bottom:2px; ">' +
			                                    '<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">' +
			                                        '<path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path>' +
			                                    '</svg>' +
			                                '</span>' +
			                            '</div>' +
			                        '</button>' +
			                    '</li>';
			          
			           
			    });
				
			    // 생성한 것들을 HTML 에 추가
			    $("ul#recommendList").html(html); 
			},
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});
		
		
	}// END OF FUCNTION GETSKILL
	
	function searchSkill(){
		$("div.search-result").show();
		let html = "";
		const input_val = $("input#search-skill").val();
		if ( input_val.trim() == ""   ){
			$("ul.search-answer").empty();
			$("div.search-result").hide();
			return false ; 
		}// end of if 
		
		else{
			$("p.search-answer-none").hide();
			$.ajax({
				url: "/wanted/searchSkill",
				type: "get",
				data: {"input_val": input_val } ,
				dataType:"json",
				success: function (result) {
				   	//console.log(JSON.stringify(result));
				    // console.log(result.length);
					// 버튼 추가를 위한 반복문
					if ( result.length == 0 ){
						$("p.search-answer-none").show();
					}
					
					else{
						$.each(result, function(index, skill) {
					    	html += "<li class=\"border-bottom search-answer-li\">"+skill.tech_name+"<input type='hidden'  class='tech_code' value='"+skill.tech_code+"' /></li>" 
						});
					}
					$("ul.search-answer").html(html); // 생성한 것들을 HTML 에 추가
				
				},
				error: function (request, status, error) {
					alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});// END OF AJAX 
			
			
		}// end of else
	}// END OF FUNCTION SEARCHSKILL 
	
	function insertSkill(type){
		let tech_name = ""; 
		let tech_code = ""; 
		
		tech_name = $(this).text();
		tech_code = $(this).find('input.tech_code').val();
		// console.log(tech_name);  // PYTHON 
		// console.log(tech_code);  //  1000 		
	
		if ( type == "list" ){
			$("input#search-skill").val("");
			$("ul.search-answer").empty();
			$("div.search-result").hide();
			
			 $("button.btn-skill").each(function() {
				
				 	let buttonText = $(this).text(); // 각 button의 텍스트를 가져옵니다.
				    if (buttonText.includes(tech_name)) {
				      // 해당 button에 특정 단어가 포함되어 있다면 원하는 동작을 수행합니다.
				      // 예를 들어, 해당 button을 스타일링하거나 클릭 이벤트를 트리거할 수 있습니다.
				      // console.log($(this).html());
				      $(this).removeClass("btn-skill").addClass("btn-delete");
				      
				      // 버튼 내부의 span 요소를 선택합니다.
					    var spanElement = $(this).find('span');

					    // span 요소의 내용을 변경합니다.
					    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="8" viewBox="0 0 10 8" fill="none"><path d="M0.826019 3.33516C0.637056 3.1462 0.330686 3.1462 0.141723 3.33516C-0.0472409 3.52412 -0.0472409 3.83049 0.141723 4.01946L3.36753 7.24526C3.55649 7.43423 3.86286 7.43423 4.05183 7.24526L9.85828 1.43881C10.0472 1.24985 10.0472 0.943479 9.85828 0.754515C9.66931 0.565552 9.36294 0.565552 9.17398 0.754515L3.70968 6.21882L0.826019 3.33516Z" fill="currentColor"></path></svg>');
					    let div_element = $(this).parent().find("div.div_skill");
					    div_element.css("color" , "#36f"); 
				      
				    }
				    
			 });
			
		} // END OF if ( type == "list" ) 

		else if ( type == "button"){
			// 버튼을 클릭했을 시, 클래스를 바꿔줌을 통해 기존의 function 이 작동되지 않고
			// delete 함수를 작동시킬 수 있도록 설정
			let  element = $(this);
			element.removeClass("btn-skill").addClass("btn-delete");
			
		    // 버튼 내부의 span 요소를 선택합니다.
		    var spanElement = $(this).find('span');

		    // span 요소의 내용을 변경합니다.
		    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="8" viewBox="0 0 10 8" fill="none"><path d="M0.826019 3.33516C0.637056 3.1462 0.330686 3.1462 0.141723 3.33516C-0.0472409 3.52412 -0.0472409 3.83049 0.141723 4.01946L3.36753 7.24526C3.55649 7.43423 3.86286 7.43423 4.05183 7.24526L9.85828 1.43881C10.0472 1.24985 10.0472 0.943479 9.85828 0.754515C9.66931 0.565552 9.36294 0.565552 9.17398 0.754515L3.70968 6.21882L0.826019 3.33516Z" fill="currentColor"></path></svg>');
			
		    let div_element = $(this).parent().find("div.div_skill");
		    div_element.css("color" , "#36f"); 
			
		} // END OF else if ( type == "button" )
		
		else{
			alert("잘못된 경로입니다. 하지마세요");
			return false; 
		}

		if  ( insert_count >= 5 ){
			alert(" 최대 5개의 기술스택만 선택할 수 있습니다.");
			return false ; 
		} // end of if 
		
		let html = ""; 
	
		
	
		html += '<li class="li-skill">' +
					        '<button type="button" class="btn-delete">' +
					          '<div class="div_insert_skill">' +
					            tech_name +
					            '<input type="hidden" id="insert-tech-code" value="'+tech_code+'"/>'+
					            '<span style="margin-left:4px; margin-bottom:2px;">' +
					              '<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">' +
					                '<path d="M0.882988 0.151497L5.00001 4.26852L9.11705 0.151497C9.31905 -0.0504989 9.6465 -0.0504989 9.8485 0.151497C10.0505 0.35349 10.0505 0.680994 9.8485 0.882988L5.7315 5.00001L9.8485 9.11705C10.0505 9.31905 10.0505 9.6465 9.8485 9.8485C9.6465 10.0505 9.31905 10.0505 9.11705 9.8485L5.00001 5.7315L0.882988 9.8485C0.680994 10.0505 0.35349 10.0505 0.151497 9.8485C-0.0504989 9.6465 -0.0504989 9.31905 0.151497 9.11705L4.26852 5.00001L0.151497 0.882988C-0.0504989 0.680994 -0.0504989 0.35349 0.151497 0.151497C0.35349 -0.0504989 0.680994 -0.0504989 0.882988 0.151497Z" fill="currentColor"></path>' +
					              '</svg>' +
					            '</span>' +
					          '</div>' +
					        '</button>' +
					      '</li>';
			
		$("ul#insertList").append(html) ;
		insert_count ++ ; 
		
	}// END OF FUNCTION INSERTSKILL 
	
	function deleteSkill (){
		// console.log( $(this).html() );
		// console.log( $(this).text());  EX : Spring Framework 
		let tech_name = $(this).text() ;
		 $("div.data-input button.btn-delete").each(function() {
				// console.log($(this).html());
				// console.log($(this).text());
				if ( $(this).text().includes(tech_name) ){
					// console.log($(this).parent().html());
					// console.log($(this).parent().parent().html() ) ;
					// $(this).parent().parent().remove(); => ul 태그 까지 사라져서 사용 불가능
					$(this).closest('li').remove(); //  다음과 같이 하면 , li 까지만 지워지게 된다.
					
					insert_count -- ; 
				} // end of if 
				
				
		 });// end of each.function
		
		 $("ul#recommendList button.btn-delete").each(function(){
			 if ( $(this).text().includes(tech_name)){
				  $(this).closest('button').removeClass("btn-delete").addClass("btn-skill");
				  // 버튼 내부의 span 요소를 선택합니다.
				   var spanElement = $(this).find('span');

				    // span 요소의 내용을 변경합니다.
				    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none"><path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path></svg>');
					
				    let div_element = $(this).parent().find("div.div_skill");
				    div_element.css("color" , "#333"); 
			 
			 }
			 
		 });
	} // END OF FUNCTION DELETESKILL 
	
	function sectionClose(){
		$("section#skillSearch").hide();
		$("ul#insertList").empty();
		insert_count = 0 ; 
		 $("ul#recommendList button.btn-delete").each(function(){
				
			  $(this).closest('button').removeClass("btn-delete").addClass("btn-skill");
			  // 버튼 내부의 span 요소를 선택합니다.
			   var spanElement = $(this).find('span');

			    // span 요소의 내용을 변경합니다.
			    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none"><path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path></svg>');
				
			    let div_element = $(this).parent().find("div.div_skill");
			    div_element.css("color" , "#333"); 
		 
		 });
		 
	}// END OF FUNCTION SECTIONCLOSE 
	
	function sectionAdjust(){
		let html ="" ;
		$("ul#insertList button.btn-delete").each(function(){
			let tech_name = $(this).text();
			// console.log($(this).text());
			let tech_code= $(this).find("input").val();
			// console.log(tech_code); // 1000 1002 1003
			  
			html += '<li class="li-skill">' +
                   '<div class="div_skill">' +
                   tech_name+
                       '<input type="hidden" class="tech_code" value=" '+tech_code+' "/> '+
                       '<span style="margin-left:4px; margin-bottom:2px; ">' +
                           '<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">' +
                               '<path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path>' +
                           '</svg>' +
                       '</span>' +
                   '</div>' +
           '</li>';
		});
		$("ul#resultList").html(html); 
		$("section#skillSearch").hide();
		let tech_name = $("ul#insertList").text();
		if(insert_count == 1) {
			$("button#skill").html('<span class="FilterButton_title__MNRKD">기술스택<span class="FilteredCount_filteredCount__3PCO5 FilterInWdlist_filteredCount__f825_">'+insert_count+'</span></span><span class="ButtonDisplay_ButtonDisplay__4VTdg">'+tech_name+'</span><svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path></svg>');
		}
		else if(insert_count > 1) {
			$("button#skill").html('<span class="FilterButton_title__MNRKD">기술스택<span class="FilteredCount_filteredCount__3PCO5 FilterInWdlist_filteredCount__f825_">'+insert_count+'</span></span><span class="ButtonDisplay_ButtonDisplay__4VTdg">'+tech_name+' 외</span><svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path></svg>');
			
		}
		else {f
			$("button#skill").html('<span class="FilterButton_title__MNRKD">기술스택</span><span class="ButtonDisplay_ButtonDisplay__4VTdg"></span><svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path></svg>');
		}
		
		
		
	}// END OF FUNCTION SECTIONADJUST
	
	// 기술스택 끝
    
	
</script>

</head>
<body>
<div class="JobList_cn__t_THp container">



    <article role="navigation" class="CategoryNavbar_Container__MvZaR">
        <div class="CategoryNavbar_Body__1rM4_">
            <div class="dropdown">
            	<button class="JobGroup_JobGroup__H1m1m"  onclick="dropdownfunc()" type="button" aria-label="popup navigation button"><span class="JobGroup_JobGroup__title__nZmec">전체</span><span class="MoreButton_MoreButton__2UmZ8" role="button" aria-label="popup navigation button"><svg xmlns="https://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" class="MoreButton_MoreButton__icon__L_DpL">
                            <path fill="#767676" fill-rule="nonzero" d="M2.28 3.22a.75.75 0 0 0-1.06 1.06l4.25 4.25a.75.75 0 0 0 1.06 0l4.25-4.25a.75.75 0 0 0-1.06-1.06L6 6.94 2.28 3.22z"></path>
                        </svg></span></button>
            	 <section role="navigation" id="myDropdown" class="dropdown-content JobGroupOverlay_JobGroupOverlay__ZEs7N isKR">
            	<!--	<ul>
				     	<li><a href="/wdlist" class="JobGroupOverlay_JobGroupOverlay__all__1x5HT" aria-label="" data-attribute-id="jobCategory__click" data-job-category-id="all" data-job-category="all">전체</a></li>
				        <li><a href="/wdlist/518" class="JobGroupItem_JobGroupItem__xXzAi active" aria-label="" data-attribute-id="jobCategory__click" data-job-category-id="518" data-job-category="IT">개발</a></li>
				        <li><a href="/wdlist/507" class="JobGroupItem_JobGroupItem__xXzAi" aria-label="" data-attribute-id="jobCategory__click" data-job-category-id="507" data-job-category="Management &amp; Business">경영·비즈니스</a></li>
				        <li><a href="/wdlist/523" class="JobGroupItem_JobGroupItem__xXzAi" aria-label="" data-attribute-id="jobCategory__click" data-job-category-id="523" data-job-category="Marketing &amp; Advertising">마케팅·광고</a></li>
				        <li><a href="/wdlist/511" class="JobGroupItem_JobGroupItem__xXzAi" aria-label="" data-attribute-id="jobCategory__click" data-job-category-id="511" data-job-category="Design">디자인</a></li>
				        <li><a href="/wdlist/530" class="JobGroupItem_JobGroupItem__xXzAi" aria-label="" data-attribute-id="jobCategory__click" data-job-category-id="530" data-job-category="Sales">영업</a></li>

				    </ul>-->
				</section> 
            </div>            
                        
            <div class="JobCategory_JobCategory__uTt2E">
            	<button type="button" onclick="dropdownfunc2()"  JobCategory_JobCategory__btn__k3EFe" aria-label="popup navigation button"><span class="JobCategory_JobCategory__btn__title__ixP9v">개발 전체</span><span class="MoreButton_MoreButton__2UmZ8" style="top: 3px;" role="button" aria-label="popup navigation button"><svg xmlns="https://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" class="MoreButton_MoreButton__icon__L_DpL">
                            <path fill="#767676" fill-rule="nonzero" d="M2.28 3.22a.75.75 0 0 0-1.06 1.06l4.25 4.25a.75.75 0 0 0 1.06 0l4.25-4.25a.75.75 0 0 0-1.06-1.06L6 6.94 2.28 3.22z"></path>
                        </svg></span></button>
            	
            	<section class="JobCategoryOverlay_JobCategoryOverlay__rkFLO" role="navigation">
				    <div class="JobCategoryOverlay_JobCategoryOverlay__top__RppY3">
				        <p class="JobCategoryOverlay_JobCategoryOverlay__top__title__3tneN">직무를 선택해 주세요. (최대 5개 선택 가능)</p>
				        <div class="JobCategoryOverlay_JobCategoryOverlay__top__list__amyf6">
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">개발 전체</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">웹 개발자</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">서버 개발자</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">소프트웨어 엔지니어</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">프론트엔드 개발자</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">자바 개발자</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">C,C++ 개발자</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">안드로이드 개발자</button>
					        <button type="button" class="JobCategoryItem_JobCategoryItem__oUaZr">CIO,Chief Information Officer</button>
				        </div>
				    </div>
				    <div class="JobCategoryOverlay_JobCategoryOverlay__bottom__6Q_OM"><button class="Button_Button__root__V1ie3 Button_Button__contained__toUI5 Button_Button__containedPrimary__gFaT9 Button_Button__containedSizeMedium__c2z9c Button_Button__containedDisabled__qiqtc Button_Button__disabled__2eyyF JobCategoryOverlay_JobCategoryOverlay__bottom__btn__GliIw" data-attribute-id="jobRole__click" data-job-category="IT" data-job-category-id="518" data-job-role-id="" data-job-role="" disabled=""><span class="Button_Button__label__1Kk0v">선택 완료하기</span></button></div>
				</section>
            		            
            </div>
                        
        </div>
    </article>
    <div class="JobList_contentWrapper__QiRRW">
        <div class="List_List__kDrrx List_wdlistCustom__fVzFU">
            <div>
                <div class="FilterInWdlist_container__CXp_u FilterInWdlist_FixedWithMainBar__i4ktA isLoggedIn">
                    <div class="FilterInWdlist_innerClassName__ZOJEQ">
                        <div class="FilterInWdlist_SelectedButtonGroup__gHL3G">
                        	<button type="button" data-toggle="modal" data-target="#exampleModal" class="FilterButton_ButtonClassName__PWHFf FilterInWdlist_filterButton__njVLF" data-attribute-id="explore__filter__click" data-filter-name="region" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">
                        		<span class="FilterButton_title__MNRKD">지역<span class="FilteredCount_filteredCount__3PCO5 FilterInWdlist_filteredCount__f825_">1</span></span><span class="ButtonDisplay_ButtonDisplay__4VTdg">한국</span></button>
                        
                        <div class="FilterInWdlist_yearFilterContainer__nX3TV">
                        	<button type="button" onclick="sliderfunc()" class="FilterButton_ButtonClassName__PWHFf FilterInWdlist_filterButton__njVLF" data-attribute-id="explore__filter__click" data-filter-name="experience" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all"><span class="FilterButton_title__MNRKD">경력</span><span class="ButtonDisplay_ButtonDisplay__4VTdg">전체</span><svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg">
                                    <path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path></svg>
                            </button>
                            
                            <!-- 슬라이더 추가 -->
                            <div class="sliderwrapper YearsPopup_container___s3Uf">
							  <div class="slidercontainer">
							
							    <div class="slider-wrapper">
							      <div id="slider-range"></div>
							
							      <div class="range-wrapper">
							        <div class="range"></div>
							        <div class="range-alert">+</div>
								  </div>
							
							      <div class="marker marker-0"><sup></sup>신입</div>
							      <div class="marker marker-100"><sup></sup>10+</div>
							    </div>
								
								<hr class="Divider_Divider__root__f2LD0">
								
								<footer class="Footer_Footer__xQYVu">
								    <div class="Footer_Footer__btnBox__U8lwy">
									    <button class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textAssistive__Dx57x Button_Button__textSizeSmall__VSAkQ Footer_Footer__btnBox__cancle__Kf9Kv"><span class="Button_Button__label__1Kk0v">취소</span><span class="Button_Button__interaction__kkYaa"></span></button>
									    <button class="Button_Button__root__V1ie3 Button_Button__text__GCOTx Button_Button__textPrimary__hcFzK Button_Button__textSizeSmall__VSAkQ " data-attribute-id="explore__filter__update" data-job-category-id="518" data-job-category="IT" data-job-role-id="873,10110" data-job-role="Web Developer,Software Engineer" data-filter-name="experience" data-update-result="-1"><span class="Button_Button__label__1Kk0v" style="color: #36f;;">적용하기</span><span class="Button_Button__interaction__kkYaa"></span></button>
									</div>
								</footer>
							
							  </div>
							</div>
                            
                        </div>
                            <div class="FilterInWdlist_skillsFilterContainer__UZGLH">
                            	<button type="button" id="skill" class="FilterButton_ButtonClassName__PWHFf FilterInWdlist_filterButton__njVLF" ><span class="FilterButton_title__MNRKD">기술스택</span><span class="ButtonDisplay_ButtonDisplay__4VTdg"></span><svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg">
                                        <path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path>
                                    </svg>
                                </button>
                                
                                
								<section id="skillSearch">
											<div class="search-wrapper">
												<input type="text" id="search-skill"  placeholder=" 보유 기술 스택을 검색해주세요" style=""/>
												<button class="btn-search border-left" style="position : relative; top: -46px;  right: -482px;"><i class="fa-solid fa-magnifying-glass"></i></button>
												<!-- 검색시 결과가 뜨도록 하는 곳 -->
												
												<div class="search-result">
														<p class="search-answer-none"> 검색 결과가 없습니다.<br/>
														한글 검색결과가 없는 경우 영어로 검색해보세요</p>	
														<ul class="search-answer">
														
														</ul>
														
												</div>
												
												<h4 class="recommend">많이 쓰는 인기 기술스택을 추천해드려요</h4>
												<!-- 버튼들이 들어가는 ul -->
												<ul id="recommendList" style="padding-left:0px;"> 
												</ul>
								
												<!--  선택한 것들이 들어가는 곳-->
												<div class="data-input">
													<ul id="insertList" style="padding-left:0px;"> 
								
													</ul>
													
												</div>
												
												<p class="recommend">·기술 스택은 최대 5개까지만 선택가능합니다.</p>
											</div>
											
											<footer style="padding:10px;" class="border-top">
											
												<div style="text-align: right; margin-right: 10px; ">
													<button type="button" id="section-cancle">취소</button>
													<button type="button" id="section-adjust">적용하기</button>
												</div>
											
											</footer>
										
								</section>
                                
                            
                            </div>
                            <div class="FilterInWdlist_jobSortSelectContainer__Lgipq FilterInWdlist_marginLeftAuto__fXBZr">
                                <div class="Selector_select__UG_Cu">
                                    <div class="Selector_customSelect__LwuqR">
                                        <button class="" type="button" data-attribute-id="explore__sort__click" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">응답률순
                                            <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg">
                                                <path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path>
                                            </svg>
                                        </button>
                                        <ul style="display: none;">
                                            <li><button name="job.latest_order" type="button" data-attribute-id="explore__sort__update" data-sort-kind="latest" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">최신순</button></li>
                                            <li><button name="job.compensation_order" type="button" data-attribute-id="explore__sort__update" data-sort-kind="reward" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">보상금순</button></li>
                                            <li><button name="job.popularity_order" type="button" data-attribute-id="explore__sort__update" data-sort-kind="popular" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">인기순</button></li>
                                        </ul>
                                    </div>
                                    <div class="Selector_mobileIcon__iorZE"><svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="https://www.w3.org/2000/svg">
                                            <path d="M7.33334 0.494202C7.85691 0.494202 8.14842 1.1611 7.82205 1.61224L4.50038 6.20371C4.25071 6.54882 3.77503 6.54971 3.5243 6.20554L0.179295 1.61408C-0.149094 1.16332 0.14211 0.494202 0.666672 0.494202H7.33334Z" fill="#333"></path>
                                        </svg></div><select class="Selector_mobileSelect__vtRFB">
                                        <option value="company.response_rate_order" data-attribute-id="explore__sort__update" data-sort-kind="responseRate" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">응답률순</option>
                                        <option value="job.latest_order" data-attribute-id="explore__sort__update" data-sort-kind="latest" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">최신순</option>
                                        <option value="job.compensation_order" data-attribute-id="explore__sort__update" data-sort-kind="reward" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">보상금순</option>
                                        <option value="job.popularity_order" data-attribute-id="explore__sort__update" data-sort-kind="popular" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all">인기순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="Divider_Divider__root__f2LD0 FilterInWdlist_divider__XA0kr">
                    <!-- 모달시작 -->
                    <div class="Modal_root__aEM8D hidden" id="exampleModal" data-backdrop="true" >
					    <div class="Modal_modalContent__0zuTn LocationsPopup_container___6zbz LocationsPopup_hasSelectedLocationArea__Uicwe">
					        <div class="ModalHeader Header_Header__0d6dF">
						        <button type="button" class="LocationsPopup_ResetButton__Ko46W">
						        <span class="SvgIcon_SvgIcon__root__8vwon">
						        <svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
					                        <path d="M7.37374 2.7578C7.62384 2.29823 8.19915 2.12841 8.65872 2.37851L12.453 4.44332L12.5682 4.51706C12.8266 4.70995 12.962 5.0165 12.9465 5.3242C12.9472 5.33886 12.9475 5.35361 12.9475 5.36843C12.9475 5.67552 12.8014 5.94849 12.5749 6.1216L10.2985 9.54035L10.2123 9.65118C9.90279 9.99393 9.38074 10.0674 8.98483 9.80382L8.874 9.71768C8.53125 9.40817 8.45772 8.88612 8.72135 8.49021L9.9678 6.61778C7.12241 7.48689 5.05275 10.1333 5.05275 13.2632C5.05275 17.1001 8.1632 20.2105 12.0001 20.2105C13.869 20.2105 15.6179 19.471 16.913 18.176C18.2081 16.8809 18.9475 15.132 18.9475 13.2632C18.9475 11.3954 18.208 9.64641 16.9127 8.35009C16.5429 7.97997 16.5431 7.38013 16.9132 7.01031C17.2834 6.64048 17.8832 6.64072 18.253 7.01084C19.8998 8.65888 20.8423 10.8879 20.8423 13.2632C20.8423 15.6396 19.8997 17.8688 18.2528 19.5158C16.6058 21.1627 14.3766 22.1053 12.0001 22.1053C7.11676 22.1053 3.15801 18.1465 3.15801 13.2632C3.15801 9.34005 5.71295 6.01369 9.2497 4.8572L7.75303 4.04277L7.64425 3.97373C7.26808 3.69759 7.14449 3.17907 7.37374 2.7578Z"></path>
					                    </svg></span>초기화</button>
					                    <span>지역<span class="FilteredCount_filteredCount__3PCO5">1</span></span>
			                    <button type="button" class="IconButton_IconButton__root__dO2x7 IconButton_IconButton__normal__O3ySx close" data-dismiss="modal" aria-label="Close" style="font-size: 18px;">
			                    <span class="IconButton_IconButton__label__ZcWfp">
			                    <span class="SvgIcon_SvgIcon__root__8vwon">
			                    <svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
			                            <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z" fill="#999"></path>
			                        </svg></span></span><span class="IconButton_IconButton__interaction__I48Mv"></span></button></div>
					        <div id="MODAL_BODY" class="ModalBody Body_body__KI0OY LocationsPopup_bodyContainer__FyLa2 LocationsPopup_hasSelectedLocationArea__Uicwe">
					            <div class="Locations_container__hZ3Ul">
					                <div class="Locations_column__Ibvto">
					                    <h6>지역</h6>
					                    <ul>
					                        <li><button type="button" class="">전국</button></li>
					                        <li><button type="button" class="">서울</button></li>
					                        <li><button type="button" class="">부산</button></li>
					                        <li><button type="button" class="Locations_selected__1YaAW Locations_lastSelected__ZVHyy Locations_currentParent__Yi84n">대구</button></li>
					                        <li><button type="button" class="">인천</button></li>
					                        <li><button type="button" class="">광주</button></li>
					                        <li><button type="button" class="">대전</button></li>
					                        <li><button type="button" class="">울산</button></li>
					                        <li><button type="button" class="">세종</button></li>
					                        <li><button type="button" class="">경기</button></li>
					                        <li><button type="button" class="">강원</button></li>
					                        <li><button type="button" class="">충북</button></li>
					                        <li><button type="button" class="">충남</button></li>
					                        <li><button type="button" class="">전북</button></li>
					                        <li><button type="button" class="">전남</button></li>
					                        <li><button type="button" class="">경북</button></li>
					                        <li><button type="button" class="">경남</button></li>
					                        <li><button type="button" class="">제주</button></li>
					                    </ul>
					                </div>
					                <div class="Locations_column__Ibvto">
					                    <h6>상세지역</h6>
					                    <ul>
					                        <li><button type="button" class="">전체</button></li>
					                        <li><button type="button" class="">남구</button></li>
					                        <li><button type="button" class="">달서구</button></li>
					                        <li><button type="button" class="Locations_selected__1YaAW Locations_lastSelected__ZVHyy">동구</button></li>
					                        <li><button type="button" class="">북구</button></li>
					                        <li><button type="button" class="">서구</button></li>
					                        <li><button type="button" class="">수성구</button></li>
					                        <li><button type="button" class="">중구</button></li>
					                        <li><button type="button" class="">달성군</button></li>
					                    </ul>
					                </div>
					            </div>
					        </div>
					        <div class="CommonFooter_container__PQC4V LocationsPopup_footerContainer__49FsP LocationsPopup_hasSelectedLocationArea__Uicwe">
					            <div class="SelectedLocations_selectedLocations__6PVR9">
					                <ul class="SelectedLocations_listContainer__46isv">
					                    <li class="SelectedLocations_locationItem__8j9AK"><span>대구 동구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
					                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
					                                </svg></span></button></li>
					                    <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
					                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
					                                </svg></span></button></li>
					                    <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
					                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
					                                </svg></span></button></li>
		                                <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
		                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
		                                </svg></span></button></li>
		                                <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
		                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
		                                </svg></span></button></li>
		                                <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
		                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
		                                </svg></span></button></li>
		                                <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
		                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
		                                </svg></span></button></li>
		                                <li class="SelectedLocations_locationItem__8j9AK"><span>대구 달서구</span><button type="button"><span class="SvgIcon_SvgIcon__root__8vwon"><svg class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24">
		                                    <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path>
		                                </svg></span></button></li>
					                                                       
					                </ul>
					                
					                <p>최대 15개까지 선택 가능합니다.</p>
					            </div><button class="CommonFooter_button__sCywr" type="submit" data-attribute-id="explore__filter__update" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all" data-filter-name="region" data-update-result="daegu.dong-gu">확인</button>
					        </div>
					    </div>
					    <div role="presentation" class="Modal_modalOverlay__1sCXi false"></div>
					</div>
					
                    <section class="TagFilter_TagFilter__4xc2c">
                        <div class="TagList_TagList__uZBJG isFirst">
                            <div class="slick-slider slick-initialized" dir="ltr">
                                
                                <div class="slick-list">
                                    <div class="slick-track" style="width: 2968px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                        <div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Competitive Salary" style="background: rgb(242, 251, 245);">연봉이 최고의 복지<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F634f02e0-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="연봉이 최고의 복지"></button></div>
                                        </div>
                                        <div data-index="1" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Work From Home" style="background: rgb(243, 249, 254);">재택근무<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F5d873f3a-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="재택근무"></button></div>
                                        </div>
                                        <div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Low Turnover Rate" style="background: rgb(243, 242, 251);">퇴사율 10% 이하<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F7d3cdb3c-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="퇴사율 10% 이하"></button></div>
                                        </div>
                                        <div data-index="3" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Fast Growing" style="background: rgb(246, 248, 238);">급성장 중<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F37dacf86-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="급성장 중"></button></div>
                                        </div>
                                        <div data-index="4" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Military exempt" style="background: rgb(247, 242, 249);">병역특례<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F6eda33d2-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="병역특례"></button></div>
                                        </div>
                                        <div data-index="5" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Less than 50 employees" style="background: rgb(238, 250, 249);">50인 이하️<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F3a965d18-c524-11ec-901c-acde48001122.png&amp;w=50&amp;q=75" alt="50인 이하️"></button></div>
                                        </div>
                                        <div data-index="6" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="50+ employees" style="background: rgb(239, 241, 251);">50인 이상️<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F4cec3244-c524-11ec-901c-acde48001122.png&amp;w=50&amp;q=75" alt="50인 이상️"></button></div>
                                        </div>
                                        <div data-index="7" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="+ 5 yrs of experience" style="background: rgb(242, 251, 245);">업력 5년 이상<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F45bb9794-c524-11ec-901c-acde48001122.png&amp;w=50&amp;q=75" alt="업력 5년 이상"></button></div>
                                        </div>
                                        <div data-index="8" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Flexible Hours" style="background: rgb(243, 249, 254);">유연근무<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F827f6146-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="유연근무"></button></div>
                                        </div>
                                        <div data-index="9" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Unlimited PTO" style="background: rgb(243, 242, 251);">자유로운 휴가<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F68dadb80-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="자유로운 휴가"></button></div>
                                        </div>
                                        <div data-index="10" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Bonuses" style="background: rgb(246, 248, 238);">일한만큼 받는 보상<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F472333e8-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="일한만큼 받는 보상"></button></div>
                                        </div>
                                        <div data-index="11" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Company Culture" style="background: rgb(247, 242, 249);">수평적 문화<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F78563d98-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="수평적 문화"></button></div>
                                        </div>
                                        <div data-index="12" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Emerging Industry" style="background: rgb(238, 250, 249);">요즘 뜨는 산업<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F4e1b135a-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="요즘 뜨는 산업"></button></div>
                                        </div>
                                        <div data-index="13" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none;">
                                            <div><button type="button" class="TagListItem_TagListItem__3aCT9" data-attribute-id="userTag__filter__click" data-kind="add" data-tag="Free Meals" style="background: rgb(239, 241, 251);">식사·간식 제공<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F53ca893e-9f6e-11ec-b909-0242ac120002.png&amp;w=50&amp;q=75" alt="식사·간식 제공"></button></div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </section>
                    <hr class="Divider_Divider__root__f2LD0 FilterInWdlist_divider_mo__hrhkB">
                </div>
            </div>
            <hr class="Divider_Divider__root__f2LD0 List_divider__eZQ4g">
            
            <div class="Featured_titleStyle_container">
                <h3 class="Featured_titleStyle__gZUrR">적극 채용 중인 회사</h3>
                
                <div class="Featured_sliderWrapper__nHmfc nextDisabled prevDisabled lessThanFive">
                    <div class="slick-slider Featured_slider__Bnaji lessThanFive nextDisabled slick-initialized">
                        <div class="slick-list">
                            <div class="slick-track" id="slick-track-second" style="width: 1075px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                <div data-index="0" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 215px; height: 28%;">
                                    <div><a href="/company/8040" class="Featured_sliderItem__FY8yb"     style="color: #000;" aria-label="featured company card link" data-attribute-id="company__click" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all" data-company-id="8040" data-company-name="트리플콤마(골드스푼)" data-ad-id="46436" data-marketing-case="topPicks">
                                            <header>
                                                <div class="companyBg undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F8040%2F5wemaaq53ybzu6dt__400_400.jpg&amp;w=400&amp;q=75&quot;);"></div>
                                            </header>
                                            <footer>
                                                <div class="logoCircle undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.6120bdd5.jpg&amp;w=100&amp;q=75&quot;); background-size: contain; background-color: rgb(255, 255, 255);"></div>
                                                <h4>트리플콤마(골드스푼)</h4>
                                                <h5>10개 포지션</h5>
                                            </footer>
                                        </a></div>
                                </div>
                                <div data-index="1" class="slick-slide" id="slick-track-second" tabindex="-1" aria-hidden="false" style="outline: none; width: 211px; height: 28%;">
                                    <div><a href="/company/32998" class="Featured_sliderItem__FY8yb"   style="color: #000;" aria-label="featured company card link" data-attribute-id="company__click" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all" data-company-id="32998" data-company-name="캐처스" data-ad-id="46385" data-marketing-case="topPicks">
                                            <header>
                                                <div class="companyBg undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F32998%2Fhoqa8wlwygmtd6lo__400_400.png&amp;w=400&amp;q=75&quot;);"></div>
                                            </header>
                                            <footer>
                                                <div class="logoCircle undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.39373a86.png&amp;w=100&amp;q=75&quot;); background-size: contain; background-color: rgb(255, 255, 255);"></div>
                                                <h4>캐처스</h4>
                                                <h5>4개 포지션</h5>
                                            </footer>
                                        </a></div>
                                </div>
                                <div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 211px; height: 28%;">
                                    <div><a href="/company/40226" class="Featured_sliderItem__FY8yb" style="color: #000;" aria-label="featured company card link" data-attribute-id="company__click" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all" data-company-id="40226" data-company-name="한국모바일결제" data-ad-id="46522" data-marketing-case="topPicks">
                                            <header>
                                                <div class="companyBg undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F40226%2Fodywsqyqiimi0qub__400_400.jpg&amp;w=400&amp;q=75&quot;);"></div>
                                            </header>
                                            <footer>
                                                <div class="logoCircle undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.3b58ebe7.jpg&amp;w=100&amp;q=75&quot;); background-size: contain; background-color: rgb(255, 255, 255);"></div>
                                                <h4>한국모바일결제</h4>
                                                <h5>13개 포지션</h5>
                                            </footer>
                                        </a></div>
                                </div>

                                <div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 211px; height: 28%;">
                                    <div><a href="/company/40226" class="Featured_sliderItem__FY8yb" style="color: #000;" aria-label="featured company card link" data-attribute-id="company__click" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all" data-company-id="40226" data-company-name="한국모바일결제" data-ad-id="46522" data-marketing-case="topPicks">
                                            <header>
                                                <div class="companyBg undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F40226%2Fodywsqyqiimi0qub__400_400.jpg&amp;w=400&amp;q=75&quot;);"></div>
                                            </header>
                                            <footer>
                                                <div class="logoCircle undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.3b58ebe7.jpg&amp;w=100&amp;q=75&quot;); background-size: contain; background-color: rgb(255, 255, 255);"></div>
                                                <h4>한국모바일결제</h4>
                                                <h5>13개 포지션</h5>
                                            </footer>
                                        </a></div>
                                </div>

                                <div data-index="2" class="slick-slide slick-active" tabindex="-1" aria-hidden="false" style="outline: none; width: 211px; height: 28%;">
                                    <div><a href="/company/40226" class="Featured_sliderItem__FY8yb" style="color: #000;" aria-label="featured company card link" data-attribute-id="company__click" data-job-category-id="518" data-job-category="IT" data-job-role-id="all" data-job-role="all" data-company-id="40226" data-company-name="한국모바일결제" data-ad-id="46522" data-marketing-case="topPicks">
                                            <header>
                                                <div class="companyBg undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F40226%2Fodywsqyqiimi0qub__400_400.jpg&amp;w=400&amp;q=75&quot;);"></div>
                                            </header>
                                            <footer>
                                                <div class="logoCircle undefined" style="background-image: url(&quot;https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fwdes%2F0_5.3b58ebe7.jpg&amp;w=100&amp;q=75&quot;); background-size: contain; background-color: rgb(255, 255, 255);"></div>
                                                <h4>한국모바일결제</h4>
                                                <h5>13개 포지션</h5>
                                            </footer>
                                        </a></div>
                                </div>

                               
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="List_List_container__JnQMS">
                
                
            </div>
        </div>
        
    </div>
</div>
</body>


