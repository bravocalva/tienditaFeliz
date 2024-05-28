using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
// ------------------------------
using System.Data;
// ------------------------------



namespace wsrvTienditaFeliz
{
    /// <summary>
    /// Descripción breve de svcConexiones
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class svcConexiones : System.Web.Services.WebService
    {


        [WebMethod]
        public DataSet sp_InsCliente(string RFC, string nombre, string apPat, string apMat, string tel)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_InsCliente(RFC, nombre, apPat, apMat, tel);
        }


        [WebMethod]
        public DataSet sp_DelCliente(string RFC)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_DelCliente(RFC);
        }


        [WebMethod]
        public DataSet sp_UpdCliente(string RFC, string nombre, string apPat, string apMat, string tel)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_UpdCliente(RFC, nombre, apPat, apMat, tel);
        }

        [WebMethod]
        public DataSet sp_InsEmpleado(string RFC, string nombre, string apPat, string apMat, string tel)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_InsEmpleado(RFC, nombre, apPat, apMat, tel);
        }

        [WebMethod]
        public DataSet sp_DelEmpleado(string RFC)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_DelEmpleado(RFC);
        }


        [WebMethod]
        public DataSet sp_UpdEmpleado(string RFC, string nombre, string apPat, string apMat, string tel)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_UpdEmpleado(RFC, nombre, apPat, apMat, tel);
        }


        [WebMethod]
        public DataSet sp_InsProducto(string nombre, string existencia, string PrecioCompra, string PrecioVenta, string tipo)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_InsProducto(nombre, existencia, PrecioCompra, PrecioVenta, tipo);
        }


        [WebMethod]
        public DataSet sp_DelProducto(string ID)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_DelProducto(ID);
        }


        [WebMethod]
        public DataSet sp_UpdProducto(string nombre,
                                   string existencia,
                                   string PrecioCompra,
                                   string PrecioVenta,
                                   string tipo)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_UpdProducto(nombre, existencia, PrecioCompra, PrecioVenta, tipo);
        }


        [WebMethod]
        public DataSet vw_Productos()
        {
            clsConexiones objeto = new clsConexiones();
            return objeto.vw_Productos();

        }



        [WebMethod]
        public DataSet vw_Empleado()
        {
            clsConexiones objeto = new clsConexiones();
            return objeto.vw_Empleado();

        }

        [WebMethod]
        public DataSet vw_detalle_venta()
        {
            clsConexiones objeto = new clsConexiones();
            return objeto.vw_detalle_venta();

        }

        [WebMethod]
        public DataSet sp_Acceso(string usuario,
                                 string password)
        {

            clsConexiones objeto = new clsConexiones();
            return objeto.sp_Acceso(usuario,password);
        }


    }


}
