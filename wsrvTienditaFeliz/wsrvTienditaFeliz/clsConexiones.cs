using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// --------------------------------------------------
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
// ----------------------------------------------------

namespace wsrvTienditaFeliz
{
    public class clsConexiones
    {
        private string cadConn = ConfigurationManager.
                                     ConnectionStrings["bdMercadoFeliz"].
                                     ConnectionString.ToString();

        public DataSet sp_InsCliente(string RFC,
                                     string nombre,
                                     string apPat,
                                     string apMat,
                                     string tel)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_InsCliente('" + RFC + "', '" + nombre + "', '" + apPat + "', '" + apMat + "', '" + tel + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_InsCliente");
            // Retorno de resultados
            return ds;
        }


        public DataSet sp_DelCliente(string RFC)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_DelCliente('" + RFC + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_DelCliente");
            // Retorno de resultados
            return ds;
        }


        public DataSet sp_UpdCliente(string RFC,
                                     string nombre,
                                     string apPat,
                                     string apMat,
                                     string tel)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_UpdCliente('" + RFC + "', '" + nombre + "', '" + apPat + "', '" + apMat + "', '" + tel + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_UpdCliente");
            // Retorno de resultados
            return ds;
        }


        public DataSet sp_InsEmpleado(string RFC,
                                    string nombre,
                                    string apPat,
                                    string apMat,
                                    string tel)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_InsEmpleado('" + RFC + "', '" + nombre + "', '" + apPat + "', '" + apMat + "', '" + tel + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_InsEmpleado");
            // Retorno de resultados
            return ds;
        }


        public DataSet sp_DelEmpleado(string RFC)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_DelEmpleado('" + RFC + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_DelEmpleado");
            // Retorno de resultados
            return ds;
        }



        public DataSet sp_UpdEmpleado(string RFC,
                                     string nombre,
                                     string apPat,
                                     string apMat,
                                     string tel)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_UpdEmpleado('" + RFC + "', '" + nombre + "', '" + apPat + "', '" + apMat + "', '" + tel + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_UpdEmpleado");
            // Retorno de resultados
            return ds;
        }

        public DataSet sp_InsProducto(string nombre,
                                    string existencia,
                                    string PrecioCompra,
                                    string PrecioVenta,
                                    string tipo)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_InsProducto('" + nombre + "', '" + existencia + "', '" + PrecioCompra + "', '" + PrecioVenta + "', '" + tipo + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_InsProducto");
            // Retorno de resultados
            return ds;
        }



        public DataSet sp_DelProducto(string ID)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_DelProducto('" + ID + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_DelProducto");
            // Retorno de resultados
            return ds;
        }

        public DataSet sp_UpdProducto(string nombre,
                                   string existencia,
                                   string PrecioCompra,
                                   string PrecioVenta,
                                   string tipo)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_UpdProducto('" + nombre + "', '" + existencia + "', '" + PrecioCompra + "', '" + PrecioVenta + "', '" + tipo + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_UpdProducto");
            // Retorno de resultados
            return ds;
        }


        public DataSet vw_Productos()
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "select * from vw_Productos;";
            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "vw_Productos");
            // Retorno de resultados
            return ds;
        }


        public DataSet vw_Empleado()
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "select * from vw_Empleado;";
            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "vw_Empleado");
            // Retorno de resultados
            return ds;
        }


        public DataSet vw_detalle_venta()
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "select * from vw_detalle_venta;";
            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "vw_detalle_venta");
            // Retorno de resultados
            return ds;
        }



        public DataSet sp_Acceso(string usuario,string password)
        {
            // Clases de conexión y ejecución de comandos
            string cadSql = "CALL sp_Acceso('" + usuario + "', '" + password  + "')";


            MySqlConnection cnn = new MySqlConnection(cadConn);
            MySqlDataAdapter da = new MySqlDataAdapter(cadSql, cnn);
            // Ejecución del adaptador y recibir datos
            DataSet ds = new DataSet();
            da.Fill(ds, "sp_Acceso");
            // Retorno de resultados
            return ds;
        }








    }
}