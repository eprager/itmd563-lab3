﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace MortgageCalculator
{
    public class IOHelper : IDataHelper
    {
        public static string path = HttpContext.Current.Server.MapPath("App_Data");
        public static string pathAndFile = Path.Combine(path, "mortgageresults.txt");

        public String ClearMortgages()
        {
            try
            {
                File.WriteAllText(pathAndFile, String.Empty);
                return "Mortgages cleared successfully";
            }
            catch (IOException e)
            {
                return "The file could not be read";
            }
        }

        public String GetAllMortgages()
        {
            String output = String.Empty;

            try
            {
                using (var sr = new StreamReader(pathAndFile))
                {
                    return sr.ReadToEnd();
                }
            }
            catch (IOException e)
            {
                return "The file could not be read";
            }
        }

        public void WriteMortgage(String output)
        { 
            output = output + "\n";
            try
            {
                File.AppendAllText(pathAndFile, output);
            }
            catch (IOException e)
            {
                //error
            }
            
        }
    }
}