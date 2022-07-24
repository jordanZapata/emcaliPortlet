package com.emcali.altoConsumo.porletLanding.portlet;

import com.emcali.altoConsumo.porletLanding.constants.PorletLandingPortletKeys;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.model.Layout;
import com.liferay.portal.kernel.portlet.LiferayPortletURL;
import com.liferay.portal.kernel.portlet.PortletURLFactoryUtil;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.service.LayoutLocalServiceUtil;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.PortalUtil;
import com.liferay.portal.kernel.util.WebKeys;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.PortletRequest;
import javax.portlet.PortletURL;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.servlet.http.HttpServletRequest;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.*;
import java.util.Vector;
import java.util.Hashtable;

/**
 * @author Asus-PC
 */
@Component(immediate = true, property = { "com.liferay.portlet.display-category=Emcali",
		"com.liferay.portlet.header-portlet-css=/css/main.css", "com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=PorletLanding", 
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + PorletLandingPortletKeys.PORLETLANDING,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user" }, service = Portlet.class)
public class PorletLandingPortlet extends MVCPortlet {
//	static private Vector<Hashtable<String, String>> facturas = new Vector<Hashtable<String, String>>();

	public void recCobroPromedio(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException, PortalException {

//		System.out.println("Parameters : " + ParamUtil.getString(actionRequest, "num", ""));
//		
//		String num = ParamUtil.getString(actionRequest, "num", "");
//		String cliente = ParamUtil.getString(actionRequest, "cliente", "");
//		String importe = ParamUtil.getString(actionRequest, "importe", "");
//		
//		Hashtable<String, String> reg = new Hashtable<String, String>();
//		reg.put("num", num);
//		reg.put("cliente", cliente);
//		reg.put("importe", importe);
//		facturas.add(reg);
//		actionResponse.sendRedirect(redirect);
		actionResponse.sendRedirect("http://localhost:8080/web/guest/home?p_p_id=com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9_jspPage=%2FconfSolicitub.jsp"); 

	}
	
	public void recAltoConsumo(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException, PortalException {
		
//		ThemeDisplay themeDisplay = (ThemeDisplay) actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
//	
//		System.out.println("Parameters : " + themeDisplay.getPortalURL());
//		System.out.println("Parameters : " + themeDisplay.getScopeGroup().getGroupId());
//		System.out.println("Parameters : " + themeDisplay.getScopeGroup().getGroupKey());
//		System.out.println("Parameters : " + themeDisplay.getScopeGroup().getClassName());
//		
//
//		String pageName="confSolicitub.jsp";
//		String portletName =  PorletLandingPortletKeys.PORLETLANDING;
//		
//		final long GROUP_ID = themeDisplay.getLayout().getGroupId();
		
	/*	try {
			Layout selectedLayout = LayoutLocalServiceUtil.getLayout(GROUP_ID);
			
			String url = PortalUtil.getLayoutFriendlyURL(selectedLayout, themeDisplay);
			System.out.println("Parameters url: " + url);
		}catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
		}*/
		
//		String title = themeDisplay.getLayout().getName(themeDisplay.getLocale());
//	    long plid = LayoutLocalServiceUtil.getDefaultPlid(GROUP_ID, true);
//
//		System.out.println("Parameters plid: " + plid);
//		
//		Layout selectedLayout = LayoutLocalServiceUtil.getLayout(plid);
//		String url = PortalUtil.getLayoutFriendlyURL(selectedLayout, themeDisplay);
//		
//		System.out.println("Parameters url: " + url);
		/*long plid = 0L;
		try {
		 plid = LayoutLocalServiceUtil.getFriendlyURLLayout(themeDisplay.getScopeGroupId(), false, pageName).getPlid();
		} catch (Exception e) {
			System.out.println("Error: " + e.getMessage());
		}*/
		
//		PortletURL redirectURL = PortletURLFactoryUtil.create(PortalUtil.getHttpServletRequest(actionRequest),portletName,plid,    PortletRequest.RENDER_PHASE);
//		System.out.println("Parameters redirectURL: " + redirectURL.toString());
//		
		//System.out.println("Parameters redirectURL: " + redirectURL.toString());
		//redirectURL.setParameter("data", "This Value Comes From Welcome Page"); // set required parameter that you need in doView of another Portlet
		//actionResponse.sendRedirect(redirectURL.toString()); 
		actionResponse.sendRedirect("http://localhost:8080/web/guest/home?p_p_id=com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9_jspPage=%2FconfSolicitub.jsp"); 		
	}
	
	public void reconexion(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException, PortalException {
		actionResponse.sendRedirect("http://localhost:8080/web/guest/home?p_p_id=com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9_jspPage=%2FconfSolicitub.jsp"); 

	}
	
	public void susTempClausuraRetiro(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException, PortalException {
		actionResponse.sendRedirect("http://localhost:8080/web/guest/home?p_p_id=com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9_jspPage=%2FconfSolicitub.jsp"); 

	}
	
	
	public void solicitudServicios(ActionRequest actionRequest, ActionResponse actionResponse)
			throws IOException, PortletException, PortalException {
		
		actionResponse.addProperty("numeroTicket","10256864");

		actionResponse.sendRedirect("http://localhost:8080/web/guest/home?p_p_id=com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_com_emcali_altoConsumo_porletLanding_PorletLandingPortlet_INSTANCE_pAz3go5xdzd9_jspPage=%2FconfSolicitub.jsp"); 
		
	}

	@Override
	public void render(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {

		String jspPage = ParamUtil.getString(renderRequest, "jspPage", "");
		
		if (jspPage.equals("/confSolicitub.jsp")) {		
			System.out.println("Hola REnder: " + ParamUtil.getString(renderRequest, "numeroTicket", ""));
//			renderRequest.setAttribute("facturas", facturas);
		}
		
		super.render(renderRequest, renderResponse);
	}

}