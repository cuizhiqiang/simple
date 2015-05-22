<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"></a>
            </div>
            

            

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu"> 
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 学生信息表<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">添加学生信息</a>
                                </li>
                                
                            </ul>
                        </li>
                        <li>
                            <a href="major"><i class="fa fa-table fa-fw"></i> 专业信息</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Tables</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<td><a class="button" onclick="addStudent" style="width:60px;">添加</a>  </td>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>报名点代码</th>
											<th>报名地点</th>
											<th>报名点邮编</th>
											<th>报名号</th>
											<th>姓名</th>
											<th>姓名拼音</th>
											<th>性别</th>
											<th>籍贯所在地</th>
											<th>婚姻</th>
											<th>出生日期</th>
											<th>移动电话</th>
											<th>电子信箱</th>
											<th>本毕业单位</th>
											<th>本毕业专业</th>
											<th>民族</th>
											<th>民族码</th>
											<th>本科毕年月</th>
											<th>毕业省市码</th>
											<th>毕单位省市</th>
											<th>本科毕证号</th>
											<th>考试地点</th>
											<th>政治面貌码</th>
											<th>政治面貌</th>
											<th>在校生学号</th>
											<th>学历码</th>
											<th>原学历</th>
											<th>学士证书号</th>
											<th>学位码</th>
											<th>原学位</th>
											<th>录取类别码</th>
											<th>录取类别</th>
											<th>入学方式码</th>
											<th>入学方式</th>
											<th>考试方式码</th>
											<th>自编专业码</th>
											<th>专业代码</th>
											<th>专业名称</th>
											<th>研究方向码</th>
											<th>研究方向</th>
											<th>报考单位码</th>
											<th>报考单位</th>
											<th>第二志愿</th>
											<th>第二志愿码</th>
											<th>导师编号</th>
											<th>导师</th>
											<th>导师职称</th>
											<th>系所码</th>
											<th>系所</th>
											<th>学院</th>
											<th>外国语码</th>
											<th>外语</th>
											<th>政治理论码</th>
											<th>政治</th>
											<th>业务课1码</th>
											<th>业务课1</th>
											<th>业务课2码</th>
											<th>业务课2</th>
											<th>专业方向</th>
											<th></th>
										</tr>
									</thead>
									<tbody id="students">
									   
										<c:forEach items="${list}" var="student" varStatus="varstatus">
											<tr class="odd gradeX">
												<td>${student.baomingdiandaima}</td>
												<td>${student.baomingdidian}</td>
												<td>${student.baomingdianyoubian}</td>
												<td>${student.baominghao}</td>
												<td>${student.xingming}</td>
												<td>${student.xingmingpinyin}</td>
												<td>${student.xingbie}</td>
												<td>${student.jiguansuozaidi}</td>
												<td>${student.hunyin}</td>
												<td>${student.chushengriqi}</td>
												<td>${student.yidongdianhua}</td>
												<td>${student.dianzixinxiang}</td>
												<td>${student.benbiyedanwei}</td>
												<td>${student.benbiyezhuanye}</td>
												<td>${student.minzu}</td>
												<td>${student.minzuma}</td>
												<td>${student.benkebinianyue}</td>
												<td>${student.biyeshengshima}</td>
												<td>${student.bidanweishengshi}</td>
												<td>${student.benkebizhenghao}</td>
												<td>${student.kaoshididian}</td>
												<td>${student.zhengzhimianmaoma}</td>
												<td>${student.zhengzhimianmao}</td>
												<td>${student.zaixiaoshengxuehao}</td>
												<td>${student.xuelima}</td>
												<td>${student.yuanxueli}</td>
												<td>${student.xueshizhengshuhao}</td>
												<td>${student.xueweima}</td>
												<td>${student.yuanxuewei}</td>
												<td>${student.luquleibiema}</td>
												<td>${student.luquleibie}</td>
												<td>${student.ruxuefangshima}</td>
												<td>${student.ruxuefangshi}</td>
												<td>${student.kaoshifangshima}</td>
												<td>${student.zibianzhuanyema}</td>
												<td>${student.zhuanyedaima}</td>
												<td>${student.zhuanyemingchen}</td>
												<td>${student.yanjiufangxiangma}</td>
												<td>${student.yanjiufangxiang}</td>
												<td>${student.baokaodanweima}</td>
												<td>${student.baokaodanwei}</td>
												<td>${student.dierzhiyuan}</td>
												<td>${student.dierzhiyuanma}</td>
												<td>${student.daoshibianhao}</td>
												<td>${student.daoshi}</td>
												<td>${student.daoshizhicheng}</td>
												<td>${student.xisuoma}</td>
												<td>${student.xisuo}</td>
												<td>${student.xueyuan}</td>
												<td>${student.waiguoyuma}</td>
												<td>${student.waiyu}</td>
												<td>${student.zhengzhililunma}</td>
												<td>${student.zhengzhi}</td>
												<td>${student.yewuke1ma}</td>
												<td>${student.yewuke1}</td>
												<td>${student.yewuke2ma}</td>
												<td>${student.yewuke2}</td>
												<td>${student.zhuanyefangxiang}</td>
												<td><a href="${student.id}/delete">删除</a></td>
											</tr>
										</c:forEach>


									</tbody>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
