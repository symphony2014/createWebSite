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
            //string sqlConnectionString = string.Format(@"server=10.137.254.194\Externals;database=SocialSpaceFor{0};uid=SocialSpaceWebAccesser;pwd=Web@User_2011", siteName);

            string[] paths = new string[] {
                "CreateTable_NewSS_V4.7.sql","14_NewSocialSpace4.7升级4.8文件_2015-1-22.sql","DBinitData_NewSS_V4.7.sql"
            };

            using (EmptyForTestEntities2 entities = new EmptyForTestEntities2())
            {
                foreach (var item in paths)
                {
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
                                int result = entities.Database.ExecuteSqlCommand(str);
                                instance.Info("-------------execute----------------");
                                instance.Info(str);
                            }
                            catch (Exception ex)
                            {
                                instance.Debug("debug:", ex);
                            }

                        }
                    }
                }
            }
            //            using (SqlConnection conn = new SqlConnection(string.Format(sqlConnectionString, siteName)))
            //            {

            //                Server server = new Server(new ServerConnection(conn));
            //                foreach (var item in paths)
            //                {
            //                    string script = File.ReadAllText(item);
            //                    server.ConnectionContext.ExecuteNonQuery(script);
            //                }
            //            };

            //            string global =@"server=10.137.254.194\Externals;database=SocialSpaceForSNS;uid=SocialSpaceWebAccesser;pwd=Web@User_2011";
            //            using (SqlConnection conn = new SqlConnection(global))
            //            {
            //                Server server = new Server(new ServerConnection(conn));
            //                foreach (var item in paths)
            //                {
            //                    int max=0;
            //                   max=Convert.ToInt32( server.ConnectionContext.ExecuteScalar("select max(communityId) from Community"));
            //                    string script = string.Format(@"insert into Community (CommunityId, CommunityName,[Description],UniqueWord,ClientId,UserPassportId,DateCreated) values
            //({0},{1},{1},{1},1,110523211251349122,getdate())",max+1,siteName);
            //                    server.ConnectionContext.ExecuteNonQuery(script);
            //                }
            //            };

        }
    }
}
