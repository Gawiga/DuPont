using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;

namespace DuPont
{
    public class Functions
    {
        public DataTable DT(string Sql)
        {
            SqlConnection DB = new SqlConnection();
            DB.ConnectionString = ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString;
            DB.Open();
            using (SqlDataAdapter a = new SqlDataAdapter(Sql, DB))
            {
                DataTable dt = new DataTable();
                a.Fill(dt);
                if (DB.State != ConnectionState.Closed) DB.Close();
                return dt;
            }
        }
    }

    public static class Ext
    {
        public static double ToDouble(this object o)
        {
            double d;
            if (!Double.TryParse((o ?? "").ToString().Replace(",", "."), NumberStyles.Any, CultureInfo.InvariantCulture, out d))
                throw new FormatException(String.Format("Can't parse {0} to double", o));
            return d;
        }
    }
}