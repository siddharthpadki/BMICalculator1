using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBoxHeight_TextChanged(object sender, EventArgs e)
    {
        LabelHeightOutput.Text = "Your height is " + TextBoxHeight.Text + "m";
    }

    protected void TextBoxWeight_TextChanged(object sender, EventArgs e)
    {
        LabelWeightOutput.Text = "Your weight is " + TextBoxWeight.Text + "kg";
    }

    protected void ButtonCalculator_Click(object sender, EventArgs e)
    {
        decimal bmiResult = 0;
        decimal height = decimal.Parse(TextBoxHeight.Text);
        decimal weight = decimal.Parse(TextBoxWeight.Text);
        if (height > 0)
        {
            bmiResult = weight / (height * height);
            LabelBMICalculate.Text = "Your BMI is " + Math.Round(bmiResult, 2);
        }
        else
        {
            LabelBMICalculate.Text = "Error in height.Enter height again.";
        }

        if( (bmiResult > 0m) && (bmiResult <= 18.5m))
        {
            LabelBMIResult.Text = "You are underweight";
        }
        else if ((bmiResult > 18.5m)&& (bmiResult < 25))
        {
            LabelBMIResult.Text = "You have a healthy weight";
        }
        else if ((bmiResult >= 25) && (bmiResult <= 30))
        {
            LabelBMIResult.Text = "You are overweight";
        }
        else if(bmiResult > 30)
        {
            LabelBMIResult.Text = "Your BMI suggests you are obese";
        } 
        else
        {
            LabelBMIResult.Text = "There is something wrong with the data you entered.  Please try again.";
        }          
    }

    protected void TextBoxDate_TextChanged(object sender, EventArgs e)
    {
        LabelBirthDate.Text = "Your date of birth is " + TextBoxDate.Text;
    }
}