<%@ include file="/init.jsp"%>

<portlet:renderURL var='recAltoConsumo'>
	<portlet:param name='jspPage' value='/recAltoConsumo.jsp' />
</portlet:renderURL>

<portlet:renderURL var='recCobroPromedio'>
	<portlet:param name='jspPage' value='/recCobroPromedio.jsp' />
</portlet:renderURL>

<portlet:renderURL var='confSolicitud'>
	<portlet:param name='jspPage' value='/confSolicitub.jsp' />
</portlet:renderURL>

<portlet:renderURL var='reconexion'>
	<portlet:param name='jspPage' value='/reconexion.jsp' />
</portlet:renderURL>

<portlet:renderURL var='susTempClausuraRetiro'>
	<portlet:param name='jspPage' value='/susTempClausuraRetiro.jsp' />
</portlet:renderURL>

<portlet:renderURL var='solicitudServicios'>
	<portlet:param name='jspPage' value='/solicitudServicios.jsp' />
</portlet:renderURL>

<ul>
  <li> <a href="${confSolicitud}">Consfirmar solicitud</a> </li>
</ul>


<img src="https://appserv.emcali.com.co/image/layout_set_logo?img_id=16209391&t=1657702360672"  class="w-25"/>
<div class="container">
	<div class="panel panel-default">

		<h2 class="m-2">Bienvenido al Portal de Servicios de Emcali, seleccione la
			operación que desea realizar</h2>
		<hr />

		<aui:row cssClass="mt-2">
			<aui:col span="3" cssClass="ml-auto mr-auto">
				<div class="card m-1" style="width: 18rem;">
					<div class="card-body text-center">
						<a href='${ recAltoConsumo }'> <liferay-ui:icon icon="signal"
								cssClass="icon-4x" />
							<hrs />
							<p>Reclamo por alto consumo</p>
						</a>
					</div>

				</div>
			</aui:col>
			<aui:col span="3" cssClass="ml-auto mr-auto">
				<div class="card m-1" style="width: 18rem;">
					<div class="card-body text-center">
						<a href='${ recCobroPromedio }'> <liferay-ui:icon
								icon="bar-chart" cssClass="icon-4x" />
							<hr />
							<p>Reclamo por cobro por promedio</p>
						</a>
					</div>

				</div>
			</aui:col>
			<aui:col span="3" cssClass="ml-auto mr-auto">
				<div class="card m-1" style="width: 18rem;">
					<div class="card-body text-center">
						<a href='${ reconexion }'> <liferay-ui:icon icon="random"
								cssClass="icon-4x" /> <i class="fa fa-bar-chart"
							aria-hidden="true"></i>
							<hr />
							<p>Reconexión y/o reinstalación de servicios</p>
						</a>
					</div>

				</div>
			</aui:col>
		</aui:row>
		<aui:row cssClass="mt-2 mb-2">
			<aui:col span="3" cssClass="ml-auto mr-auto">
				<div class="card m-1" style="width: 18rem;">
					<div class="card-body text-center">
						<a href='${ susTempClausuraRetiro }'> <liferay-ui:icon
								iconCssClass=" icon-remove icon-4x" label="<%=false%>" />
							<hr />
							<p>Suspensión temporal, clausura y/o retiro</p>
						</a>
					</div>

				</div>
			</aui:col>
			<aui:col span="3" cssClass="ml-auto mr-auto">
				<div class="card m-1" style="width: 18rem;">
					<div class="card-body text-center">
						<a href='${ solicitudServicios }'> <liferay-ui:icon
								iconCssClass="icon-user icon-4x" label="<%=false%>" />

							<hr />
							<p>Solicitud de servicios en linea</p>
						</a>
					</div>

				</div>
			</aui:col>
		</aui:row>


	</div>
</div>