<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>layui在线调试</title>
      <%--layui--%>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <style>
        body{margin: 10px;}
        .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
    </style>
</head>
<body>




<div class="layui-tab layui-tab-brief" lay-filter="demo">
  
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">

            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div><p class="layui-bg-green demo-carousel">在这里，你将以最直观的形式体验 layui！</p></div>
                    <div><p class="layui-bg-red demo-carousel">在编辑器中可以执行 layui 相关的一切代码</p></div>
                    <div><p class="layui-bg-blue demo-carousel">你也可以点击左侧导航针对性地试验我们提供的示例</p></div>
                    <div><p class="layui-bg-orange demo-carousel">如果最左侧的导航的高度超出了你的屏幕</p></div>
                    <div><p class="layui-bg-cyan demo-carousel">你可以将鼠标移入导航区域，然后滑动鼠标滚轮即可</p></div>
                </div>
            </div>
        </div>
              
    </div>
</div>




<script src="../layui/layui.js"></script>
<script>
    layui.config({
        version: '1512984638033' //为了更新 js 缓存，可忽略
    });

    layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element'], function(){
        var laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
                layer = layui.layer //弹层
            ,table = layui.table //表格
            ,carousel = layui.carousel //轮播

  
     

        //执行一个轮播实例
        carousel.render({
            elem: '#test1'
            ,width: '20%' //设置容器宽度
            ,height: 200
            ,arrow: 'none' //不显示箭头
            ,anim: 'fade' //切换动画方式
        });

    


    });
</script>
</body>
</html>
