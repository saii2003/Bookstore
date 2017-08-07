using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BussinessLogic;

/// <summary>
/// WebService 的摘要描述
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下一行。
//[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {


    [WebMethod]
    public string checkUsername(string username) 
    {
        //檢查帳號是否使用
        string result = string.Empty;
        MemberBL memBL = new MemberBL();
        if (string.IsNullOrEmpty(username))
        {
           result  = "請輸入帳號";
        }
        else
        {
            if (memBL.check_username(username) == 0)
            {
                result = "可以使用此帳號";
            }
            else
            {
                result = "此帳號已經使用過";
            }
        }

        return result;
    }
    
}
