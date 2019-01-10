using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebServiceClientTest.ServiceReference2;

namespace WebServiceClientTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //connect to web service 
            SampleWebServiceSoapClient client = new SampleWebServiceSoapClient();

            //call web service method based on user params and place result in string variable
            WebServiceResponse response = client.Calculator(Convert.ToInt32(txtFirstValue.Text), Convert.ToInt32(txtSecondValue.Text), txtOperation.Text);

            if(response.Result != string.Empty)
            {
                lblResult.Text = "Result: <b style ='color:Green'>" + response.Result + "</b>";
            }
            else
            {
                lblResult.Text = "Exception: <b style ='color:Red'>" + response.ErrorMessage + "</b>";
            }
        }
    }
}