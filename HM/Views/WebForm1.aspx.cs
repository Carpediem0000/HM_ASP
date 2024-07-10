using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HM.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private int _сhoices;
        private int _num1;
        private int _num2;
        private int _score = 0;
        private string[] buttonIds = { "Button1", "Button2", "Button3", "Button4", "Button5", "Button6", "Button7", "Button8", "Button9" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                _сhoices = 0;
                _score = 0;
                lbl_Score.Text = $"Score: {_score}";
                NumButtonsRandom();
            }
            else
            {
                _сhoices = (int)(ViewState["Choices"] ?? 0);
                _score = (int)(ViewState["Score"] ?? 0);
            }
        }

        private void NumButtonsRandom()
        {
            Random rnd = new Random();
            
            foreach (string id in buttonIds)
            {
                Button button = FindControl(id) as Button;
                if (button != null)
                {
                    button.Text = rnd.Next(1, 10).ToString();
                }
            }

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            int numClicked = Convert.ToInt32(((Button)sender).Text);

            switch (_сhoices)
            {
                case 0:
                    ViewState["Num1"] = numClicked;
                    _сhoices++;
                    ViewState["Choices"] = _сhoices;
                    break;
                case 1:
                    int num1 = (int)(ViewState["Num1"] ?? 0);
                    int num2 = numClicked;

                    if (num1 + num2 == 10)
                    {
                        _score++;
                    }
                    else if (_score > 0)
                    {
                        _score--;
                    }

                    lbl_Score.Text = $"Score: {_score}";

                    ViewState.Remove("Num1");
                    ViewState["Choices"] = 0;
                    ViewState["Score"] = _score;
                    NumButtonsRandom();

                    break;
                default:
                    _сhoices = 0;
                    break;
            }
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {
            _score = 0;
            lbl_Score.Text = $"Score: {_score}";
            NumButtonsRandom();
        }
    }
}