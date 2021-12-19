using LostyApi.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LostyApi.BL
{
    public class UserBL
    {

        public int countUsers()
        {
            UserDL dl = new UserDL();
            DataTable dt = dl.count();
            if (dt.Rows.Count > 0)
                return dt.Rows.Count;
            else
                return -1;

        }
    }
}