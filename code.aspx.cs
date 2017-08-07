using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.IO;

public partial class code : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string checkCode = Codes(5);//5碼驗證碼

        Session["CheckCode"] = checkCode;

        CreateImage(checkCode);//將驗證碼存入影像

        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    private string Codes(int CodeCount)
    {
        Random rd = new Random();
        string str = "";
        string code = string.Empty;//設定唯獨

        for (int i = 1; i <= CodeCount; i++)//驗證碼的數量
        {
            switch (rd.Next(0, 2))
            {
                case 0:
                    str += rd.Next(0, 9);
                    break;
                case 1:
                    str += Convert.ToChar(rd.Next(65, 91));//數字65~91轉換Unicode 字元A~Z
                    break;
            }
            code = str;
        }
        return code;
    }
    //建立圖片
    private void CreateImage(string checkCode)
    {

        int width = (int)(checkCode.Length * 16);//設定圖像寬
        Bitmap image = new Bitmap(width, 25);
        Graphics g = Graphics.FromImage(image);
        g.Clear(Color.White);
        Font font = new Font("Arial", 14, FontStyle.Bold);
        //漸層筆刷
        Random rd = new Random();
        Point point1 = new Point(rd.Next(10, 50), rd.Next(0, 50));
        Point point2 = new Point(image.Width, image.Height);
        Brush brush = new LinearGradientBrush(point1, point2, Color.Blue, Color.Red);

        g.DrawString(checkCode, font, brush, 3, 3);

        MemoryStream ms = new MemoryStream();
        image.Save(ms, ImageFormat.Jpeg);//將影像儲存記憶體中
        Response.ClearContent();
        Response.ContentType = "image/Jpeg";
        Response.BinaryWrite(ms.ToArray());


        g.Dispose();
        image.Dispose();

    }
}