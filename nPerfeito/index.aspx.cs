using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nPerfeito
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            long Somadivisor = 0;
            var valor_input = TextBox1.Text;
            long metade = Convert.ToInt64(valor_input) / 2;

            for (long divisor = 1; divisor <= metade; divisor++)
            {

                if (Convert.ToInt64(valor_input) % divisor == 0)
                    Somadivisor += divisor;
            }

            if (Somadivisor == Convert.ToInt64(valor_input))
            {
                Label1.Text = "É um número perfeito";


            }
            else
            {
                Label1.Text = "Não é um número perfeito";
            }
        }
    }
}


