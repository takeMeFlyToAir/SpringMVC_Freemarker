<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit"/><!-- 让360浏览器默认选择webkit内核 -->

    <!-- 全局css -->
    <link rel="shortcut icon" href="${base}/static/favicon.ico">
    <link href="${base}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/static/css/font-awesome.css" rel="stylesheet">
    <link href="${base}/static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="${base}/static/css/plugins/validate/bootstrapValidator.min.css" rel="stylesheet">
    <link href="${base}/static/css/animate.css" rel="stylesheet">
    <link href="${base}/static/css/style.css" rel="stylesheet">
    <link href="${base}/static/css/_winterStyle.css" rel="stylesheet">
    <link href="${base}/static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${base}/static/css/plugins/webuploader/webuploader.css" rel="stylesheet">
    <link href="${base}/static/css/plugins/ztree/zTreeStyle.css" rel="stylesheet">
    <link href="${base}/static/css/plugins/jquery-treegrid/css/jquery.treegrid.css" rel="stylesheet"/>
    <!-- <link href="${base}/static/css/plugins/ztree/demo.css" rel="stylesheet"> -->

    <!-- 全局js -->
    <script src="${base}/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="${base}/static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${base}/static/js/plugins/ztree/jquery.ztree.all.min.js"></script>
    <script src="${base}/static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="${base}/static/js/plugins/validate/bootstrapValidator.min.js"></script>
    <script src="${base}/static/js/plugins/validate/zh_CN.js"></script>
    <script src="${base}/static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="${base}/static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="${base}/static/js/plugins/jquery-treegrid/js/jquery.treegrid.min.js"></script>
    <script src="${base}/static/js/plugins/jquery-treegrid/js/jquery.treegrid.bootstrap3.js"></script>
    <script src="${base}/static/js/plugins/jquery-treegrid/extension/jquery.treegrid.extension.js"></script>
    <script src="${base}/static/js/plugins/layer/layer.min.js"></script>
    <script src="${base}/static/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${base}/static/js/plugins/layer/laydate/laydate.js"></script>
    <script src="${base}/static/js/plugins/webuploader/webuploader.min.js"></script>
    <script src="${base}/static/js/common/ajax-object.js"></script>
    <script src="${base}/static/js/common/bootstrap-table-object.js"></script>
    <script src="${base}/static/js/common/tree-table-object.js"></script>
    <script src="${base}/static/js/common/web-upload-object.js"></script>
    <script src="${base}/static/js/common/ztree-object.js"></script>
    <script src="${base}/static/js/common/winter.js"></script>


    <script type="text/javascript">
        Winter.addCtx("${base}");
        Winter.sessionTimeoutRegistry();
    </script>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
        ${contentBody}
</div>
<script src="${base}/static/js/content.js?v=1.0.0"></script>
</body>
</html>
