using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace DuPont
{
    public class Functions
    {

    }
    public static class Extensions
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