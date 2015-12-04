using System;
using System.Collections.Generic;
using System.Web;
using System.IO;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Text;

namespace ExeSqlScript
{
    class Program
    {
        public static log4net.ILog instance = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        static void Main(string[] args)
        {
            log4net.Config.XmlConfigurator.Configure();
            string siteName = Console.ReadLine();
            int max = 0;
            string sqlConnectionString = string.Format(@"server=10.137.254.194\Externals;database=SocialSpaceFor{0};uid=SocialSpaceWebAccesser;pwd=Web@User_2011", siteName);
            string globalConn = @"server=10.137.254.194\Externals;database=SocialSpaceForSNS;uid=SocialSpaceWebAccesser;pwd=Web@User_2011";
            string[] paths = new string[] {
                "CreateTable_NewSS_V4.7.sql","14_NewSocialSpace4.7升级4.8文件_2015-1-22.sql","DBinitData_NewSS_V4.7.sql"
            };
            //global 
            using (SqlConnection con = new SqlConnection(globalConn))
            {
                con.Open();
                using (var command = new SqlCommand("select max(communityId) from community", con))
                {
                    max = Convert.ToInt32(command.ExecuteScalar());
                }
                Update(siteName, max, con);
                con.Close();
            }
            using (SqlConnection con = new SqlConnection(sqlConnectionString))
            {
                con.Open();
                foreach (var item in paths)
                {
                    Console.WriteLine("exescript:" + item);
                    instance.Info("file:" + item);
                    string script = File.ReadAllText(item, Encoding.Default);
                    // split script on GO command
                    IEnumerable<string> commandStrings = Regex.Split(script, @"^\s*GO\s*$",
                                             RegexOptions.Multiline | RegexOptions.IgnoreCase);
                    foreach (var str in commandStrings)
                    {
                        if (!string.IsNullOrWhiteSpace(str))
                        {
                            try
                            {
                                using (var command = new SqlCommand(str, con))
                                {
                                    int result = command.ExecuteNonQuery();
                                    Console.WriteLine("success:" + result);
                                    instance.Info("success:" + result);
                                }
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine("success:" + ex.ToString());
                                instance.Debug("debug:", ex);
                            }

                        }
                    }
                }

                Update(siteName, max, con);
                using (var command = new SqlCommand(string.Format("update UserPassport set communityId={0}", max + 1), con))
                {
                    int result = command.ExecuteNonQuery();
                    Console.WriteLine("exe script :" + siteName + result);
                }
                con.Close();
            }
        }

        private static void Update(string siteName, int max, SqlConnection con)
        {
            using (var command = new SqlCommand(string.Format("insert into Community values({{0},{1},{1},{1},1,110523211251349122,getdate())", max + 1, siteName), con))
            {
                int result = command.ExecuteNonQuery();
                Console.WriteLine("exe script :" + siteName + result);
            }
        }
    }
}
