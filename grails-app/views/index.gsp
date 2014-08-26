<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Tablero de Control</title>
</head>
<body>

    <header class="header">
    <a href="https://www.calmecac.com.mx" class="logo">
        <img src="images/Libertad.png" width="40" height="45"> CALMECAC
    </a>
    <nav class="navbar navbar-static-top" role="navigation">
        <a href="" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="navbar-left">
            <a class="bg-light-blsue logo" style="width: 300px">Tablero de Control</a>
        </div>
        <div class="navbar-right">
            <ul class="nav navbar-nav">
                <li>
                    <a><i class="glyphicon glyphicon-briefcase"></i><span> Portafolio: {{sff.portafolio}}</span></a>
                </li>
                <li>
                    <a><i class="glyphicon glyphicon-calendar"></i><span> Fecha: {{sff.fecha|date:'yyyy-MM-dd'}}</span></a>
                </li>
                <li class="dropdown user user-menu">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="glyphicon glyphicon-user"></i>
                        <span>{{sff.usuario.nombre}} {{sff.usuario.apellidopaterno}} <i class="caret"></i></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header bg-light-blue">
                            <img ng-src="images/{{sff.usuario.avatar}}.png" class="img-circle" alt="User Image" />
                            <p>
                                Hola que onda</small>
                            </p>
                        </li>
                        <li class="user-body">
                            <div class="col-xs-4 text-center">
                                    <a href="mailto:{{sff.usuario.mail}}">{{sff.usuario.mail}}</a>
                            </div>
                        </li>
                        <li class="user-footer">
                            <div class="pull-right">
                                <a href="/FlujoDeFondos/j_spring_security_logout" class="btn btn-default btn-flat">Cerrar Sesion</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
<div class="wrapper row-offcanvas row-offcanvas-left">
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="left-side sidebar-offcanvas">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img ng-src="images/{{sff.usuario.avatar}}.png" class="img-circle" alt="User Image" />
                </div>
                <div class="pull-left info">
                    <p>Hola, Adrián</p>
                    <span><i class="fa fa-circle text-success"></i> Online</span>
                </div>
            </div>
            <!-- search form -->
            <form ng-submit="globalController.seleccionar()">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Buscar..." typeahead="opcion.etiqueta for opcion in submenuList|filter:{etiqueta:$viewValue}|limitTo:8" ng-model="globalController.query" typehead-on-select="globalController.seleccionar()" autocomplete="off" />
                    <span class="input-group-btn">
                        <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>

            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li ng-repeat="menu in globalController.lopciones" class="treeview" finished-repeat>
                    <a href="">
                        <i class="fa {{menu.icono}}"></i> <span>{{menu.etiqueta}}</span><i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">

                        <li ng-repeat="submenu in menu.submenu | orderBy:submenu.titulo:true">
                            <a href="#{{submenu.url}}" ng-click="sff.titulo=submenu.titulo;sff.subtitulo=submenu.subtitulo; ;sff.url=submenu.url "><i class="fa fa-angle-double-right"></i> {{submenu.etiqueta}}</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/FlujoDeFondos/j_spring_security_logout">
                        <i class="fa fa-sign-in"></i> <span>Cerrar Sesion</span><i class="fa fa-angle-left pull-right"></i>
                    </a>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                {{sff.titulo}}
                <small>{{sff.subtitulo}}</small>
            </h1>
            <ol class="breadcrumb">
                <li><i class="fa"></i>{{sff.url}}</li>

            </ol>
        </section>
        <section class="content-header">
            <div ng-repeat="alert in alerts" class="alert alert-{{alert.type}} alert-dismissable">
                <i class="fa fa-{{alert.icon}}"></i>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{alert.msg}}
            </div>
        </section>
        <!-- Main content -->
        <section class="content" ng-view>


        </section><!-- /.content -->
    </aside><!-- /.right-side -->
</div><!-- ./wrapper -->
</body>

</html>
