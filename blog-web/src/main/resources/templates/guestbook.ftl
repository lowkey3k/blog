<#include "include/macros.ftl">
<@header title="留言板 | ${config.siteName}"
    keywords="${config.siteName},留言板,原创博客留言,个人原创网站,个人技术博客"
    description="我的留言板,欢迎给我的个人原创博客留言 - ${config.siteName}"
    canonical="blog-web-2.0.1.Beta/guestbook">
    <link href="https://cdn.bootcss.com/simplemde/1.11.2/simplemde.min.css" rel="stylesheet">
	<link href="https://cdn.bootcss.com/github-markdown-css/2.10.0/github-markdown.min.css" rel="stylesheet">
	<link href="https://cdn.bootcss.com/highlight.js/9.12.0/styles/github.min.css" rel="stylesheet">
    <style>
        .CodeMirror {
            padding: 0px;
        }
        .CodeMirror, .CodeMirror-scroll {
            min-height: 130px;
            max-height: 200px;
        }
        .CodeMirror .cm-spell-error:not(.cm-url):not(.cm-comment):not(.cm-tag):not(.cm-word) {
            background: none;
        }
        .editor-statusbar {
            display: none;
        }
        .editor-preview {
            overflow-y: initial!important;
        }
        ul {
            list-style: none;
            margin-left: 0;
            padding-left: 0;
        }
    </style>
</@header>

<div class="container custome-container">
    <nav class="breadcrumb">
        <a class="crumbs" title="返回首页" href="${config.siteUrl}" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-home"></i>首页</a>
        <i class="fa fa-angle-right"></i>留言板
    </nav>
    <div class="row">
        <@blogHeader title="留言板"></@blogHeader>
        <div class="col-sm-12 blog-main">
            <div class="blog-body expansion">
                <div class="alert alert-default alert-dismissible" role="alert" style="padding: 0px;">
                    <ul>
                        <li><i class="fa fa-lightbulb-o fa-fw"></i> 请留下你的余香。<strong>但是请勿吐槽危害他人，国家，政府！</strong></li>
                        <li><i class="fa fa-lightbulb-o fa-fw"></i> 欢迎各种花式留言！e.g.<code>System.out.println("Hello World！");</code></li>
                        <li><i class="fa fa-heartbeat fa-fw"></i> <strong>你...</strong></li>
                    </ul>
                </div>
            </div>
        </div>
        <#if config.comment>
            <div class="col-sm-12 blog-main">
                <div class="blog-body expansion">
                    <div id="comment-box" data-id="-1"></div>
                </div>
            </div>
        <#else>
            <div class="blog-body clear overflow-initial expansion gray">
                <i class="fa fa-close fa-fw"></i>评论功能已被站长关闭
            </div>
        </#if>
    </div>
</div>

<@footer>
    <script src="https://v1.hitokoto.cn/?encode=js&c=d&select=%23hitokoto" defer></script>

    <script type="text/javascript" src="https://cdn.bootcss.com/highlight.js/9.12.0/highlight.min.js"></script>
	<script type="text/javascript" src="https://cdn.bootcss.com/simplemde/1.11.2/simplemde.min.js"></script>
</@footer>
