using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using LostyApi.BL;

namespace LostyApi.Controllers
{
    public class UserController:ApiController
    {


        public HttpResponseMessage GET()
        {
            UserBL bl = new UserBL();
            int count = bl.countUsers();
            return Request.CreateResponse(HttpStatusCode.OK, count);

        }

    }
}