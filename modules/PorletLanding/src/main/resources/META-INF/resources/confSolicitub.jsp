<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%><%@
taglib
	uri="http://liferay.com/tld/portlet" prefix="liferay-portlet"%><%@
taglib
	uri="http://liferay.com/tld/theme" prefix="liferay-theme"%><%@
taglib
	uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>

<liferay-theme:defineObjects />

<portlet:defineObjects />

<img
	src="https://appserv.emcali.com.co/image/layout_set_logo?img_id=16209391&t=1657702360672"
	class="w-25" />

<h1 class="text-center mt-2">VERIFICAR FACTURACIÓN</h1>
<hr />

<h2 class="text-center">SOLICITUD ENVIADA!!  ${numeroTicket}</h2>

<aui:row>
	<aui:col span="6" cssClass="offset-3">
		<p class="text-center mt-4"
			style="color: #43484e; font-family: 'Gotham EMCALI', 'Roboto', sans-serif !important;">Tu
			solicitud a sido enviada al departamento de atencion al cliente para
			iniciar el proceso de validacion de tu factura, conoce el estado de
			ti proceso con el numero de radicado: 8563214</p>

	</aui:col>
</aui:row>

<aui:row>
	<aui:col span="6" cssClass="offset-3">
		<div class="card-body text-center">
			<liferay-ui:icon icon="ok-circle" cssClass="icon-color" />
		</div>
	</aui:col>
</aui:row>
<aui:row>
	<aui:col span='2' cssClass="offset-5">
		<a href='<portlet:renderURL/>' class="btn btn-secondary btn-block">
			Volver</a>
	</aui:col>
</aui:row>