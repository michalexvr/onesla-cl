<nav class="navbar navbar-default">
    <div class="container">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{url('/')}}">
                <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
                OneSLA
            </a>
        </div>

        @if( true || Auth::check() )
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown {{ Request::is('clientes') ? 'active' : ''}}">
                    <a href="#" class="dropdown-toggle" id="navbarDrop1" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        Clientes
                    <span class="caret"></span>
                    </a> 
                    <ul class="dropdown-menu" aria-labelledby="navbarDrop1">
                        <li><a href="{{url('clientes')}}">Ver Lista de clientes</a></li>
                        <li><a href="{{url('clientes/add')}}">Nuevo cliente</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('sla/clientes')}}">Reporte de cumplimiento de SLA con clientes</a></li>
                        <li><a href="{{url('kpi/clientes')}}">Reporte de cumplimiento de KPI con clientes</a></li>                        
                    </ul>
                </li>
                

                <li class="dropdown {{ Request::is('servicios') ? 'active' : ''}}">
                    <a href="#" class="dropdown-toggle" id="navbarDrop1" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
                        Servicios
                    <span class="caret"></span>
                    </a> 
                    <ul class="dropdown-menu" aria-labelledby="navbarDrop1">
                        <li><a href="{{url('servicios')}}">Lista de servicios</a></li>
                        <li><a href="{{url('servicios/add')}}">Nuevo servicio</a></li>
                        <li><a href="{{url('servicios/report')}}">Reportes de servicios</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('emergencias')}}">Lista de emergencias</a></li>
                        <li><a href="{{url('emergencias/add')}}">Nueva emergencia</a></li>
                        <li><a href="{{url('servicios/report')}}">Reportes de emergencias</a></li>
                        
                    </ul>
                </li>

                <li class="dropdown {{ Request::is('mantenciones') ? 'active' : ''}}">
                    <a href="#" class="dropdown-toggle" id="navbarDrop1" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        Mantenciones
                    <span class="caret"></span>
                    </a> 
                    <ul class="dropdown-menu" aria-labelledby="navbarDrop1">
                        <li><a href="{{url('mantenciones')}}">Ver Lista de mantenciones</a></li>
                        <li><a href="{{url('mantenciones/add')}}">Nueva mantención</a></li>
                        <li><a href="{{url('mantenciones/cronograma')}}">Cronograma de mantenciones</a></li>
                        <li><a href="{{url('mantenciones/report')}}">Reportes de mantenciones</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('tipo-controles')}}">Listar Tipos de Controles</a></li>
                        <li><a href="{{url('tipo-controles/add')}}">Añadir Tipo de Control</a></li>
                        <li><a href="{{url('controles')}}">Listar Controles</a></li>
                        <li><a href="{{url('controles/add')}}">Añadir Control</a></li>
                        
                        
                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('pauta-servicios')}}">Lista de pautas de mantenciones</a></li>
                        <li><a href="{{url('pauta-servicios/add')}}">Añadir nueva pauta de mantención</a></li>

                    </ul>
                </li>

                <li class="dropdown {{ Request::is('proveedores') ? 'active' : ''}}">
                    <a href="#" class="dropdown-toggle" id="navbarDrop1" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                        Proveedores
                    <span class="caret"></span>
                    </a> 
                    <ul class="dropdown-menu" aria-labelledby="navbarDrop1">
                        <li><a href="{{url('proveedores')}}">Ver Lista de proveedores</a></li>
                        <li><a href="{{url('proveedores/add')}}">Nuevo proveedor</a></li>
                        <li><a href="{{url('proveedores/servicios')}}">Servicios realizados por proveedores</a></li>
                        <li><a href="{{url('proveedores/buscar')}}">Buscar proveedores</a></li>
                        <li><a href="{{url('proveedores/evaluacion')}}">Evaluación de servicios hechos por proveedores</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('sla/proveedores')}}">Reporte de cumplimiento de SLA de proveedores</a></li>
                        <li><a href="{{url('kpi/proveedores')}}">Reporte de cumplimiento de KPI de proveedores</a></li>

                    </ul>
                </li>

                <li class="dropdown {{ Request::is('recursos') ? 'active' : ''}}">
                    <a href="#" class="dropdown-toggle" id="navbarDrop1" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
                        Recursos / Repuestos
                    <span class="caret"></span>
                    </a> 
                    <ul class="dropdown-menu" aria-labelledby="navbarDrop1">
                        <li><a href="{{url('recursos')}}">Ver Lista de Técnicos</a></li>
                        <li><a href="{{url('recursos/add')}}">Nuevo Técnico</a></li>
                        <li><a href="{{url('recursos/servicios')}}">Servicios realizados por Técnicos</a></li>
                        <li><a href="{{url('recursos/evaluacion')}}">Evaluación de servicios hechos por Técnicos</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('sla/recursos')}}">Reporte de cumplimiento de SLA de Técnicos</a></li>
                        <li><a href="{{url('kpi/recursos')}}">Reporte de cumplimiento de KPI de Técnicos</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('repuestos')}}">Ver lista de repuestos</a></li>
                        <li><a href="{{url('repuestos/add')}}">Añadir nuevo repuesto</a></li>
                        <li><a href="{{url('repuestos/stock')}}">Administrar stock</a></li>
                    </ul>
                </li>

                <li class="dropdown {{ Request::is('instalaciones') ? 'active' : ''}}">
                    <a href="#" class="dropdown-toggle" id="navbarDrop1" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                        Instalaciones
                    <span class="caret"></span>
                    </a> 
                    <ul class="dropdown-menu" aria-labelledby="navbarDrop1">
                        <li><a href="{{url('instalaciones')}}">Ver Lista de Instalaciones</a></li>
                        <li><a href="{{url('instalaciones/add')}}">Nueva Instalación</a></li>
                        
                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('equipos')}}">Ver Lista de Equipos</a></li>
                        <li><a href="{{url('equipos/add')}}">Nuevo Equipo</a></li>

                        <li><a href="{{url('tipo-equipos')}}">Tipos de Equipos</a></li>
                        <li><a href="{{url('tipo-equipos/add')}}">Añadir un tipo de Equipo</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="{{url('sla/instalaciones')}}">Reporte de cumplimiento de SLA en instalaciones</a></li>
                        <li><a href="{{url('kpi/instalaciones')}}">Reporte de cumplimiento de KPI en instalaciones</a></li>

                    </ul>
                </li>
                
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="{{url('logout')}}">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        Cerrar sesión
                    </a>
                </li>
            </ul>
        </div>
        @endif
    </div>
</nav>
