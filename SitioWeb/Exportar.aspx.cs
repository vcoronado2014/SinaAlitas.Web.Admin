using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exportar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["fechaInicio"] != null && Request.QueryString["fechaTermino"] != null && Request.QueryString["cantidadClases"] != null && Request.QueryString["formato"] != null)
        {
            string fechaIni = Request.QueryString["fechaInicio"];
            string fechaTer = Request.QueryString["fechaTermino"];
            string cantidad = Request.QueryString["cantidadClases"];
            string formato = Request.QueryString["formato"];
            odsReporte.SelectParameters[0].DefaultValue = fechaIni;
            odsReporte.SelectParameters[1].DefaultValue = fechaTer;
            odsReporte.SelectParameters[2].DefaultValue = cantidad;
            odsReporte.DataBind();
            grillaReporte.DataBind();
            ASPxGridViewExporter1.DataBind();
            if (formato == "xls")
                ASPxGridViewExporter1.WriteXlsToResponse(true);
            if (formato == "pdf")
                ASPxGridViewExporter1.WritePdfToResponse(true);
            if (formato == "doc")
                ASPxGridViewExporter1.WriteRtfToResponse(true);
        }
    }
}