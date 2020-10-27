using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MortgageCalculator;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {

        [TestMethod]
        public void TestCalc_Pass()
        {
            var input1 = "10000";
            var input2 = "15";
            var input3 = "4";
            var input4 = "";
            var result = MortgageHelper.ValidateMortgage(input1, input2, input3, input4);
            var output = "With a principal of $" + input1 + ", duration of " + input2 + " years, and an interest rate of " + input3 + "%, the monthly loan payment amount is " + "$73.97" + ".";
            Assert.AreEqual(output, result);
        }

        [TestMethod]
        public void TestCalc_Fail()
        {
            var input1 = "a";
            var input2 = "15";
            var input3 = "4.00";
            var input4 = "";
            var result = MortgageHelper.ValidateMortgage(input1, input2, input3, input4);
            Assert.AreEqual("Please enter a number for principle amount", result);
        }

        [TestMethod]
        public void TestCalc_Fail2()
        {
            var input1 = "";
            var input2 = "15";
            var input3 = "4.00";
            var input4 = "";
            var result = MortgageHelper.ValidateMortgage(input1, input2, input3, input4);
            Assert.AreEqual("Please enter input for all values", result);
        }
    }
}

