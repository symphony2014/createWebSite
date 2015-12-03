using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;
using System.IO;
using System.Data.SqlClient;

namespace ExeSqlScript
{
    class Program
    {
        static void Main(string[] args)
        {
            //string siteName = Console.ReadLine();
            //string sqlConnectionString = string.Format(@"server=10.137.254.194\Externals;database=SocialSpaceFor{0};uid=SocialSpaceWebAccesser;pwd=Web@User_2011",siteName);

            //string[] paths = new string[] {
            //    "CreateTable_NewSS_V4.7.sql","14_NewSocialSpace4.7升级4.8文件_2015-1-22.sql","DBinitData_NewSS_V4.7.sql"
            //};
            //using (SqlConnection conn = new SqlConnection(string.Format(sqlConnectionString, siteName)))
            //{
            //    Server server = new Server(new ServerConnection(conn));
            //    foreach (var item in paths)
            //    {
            //        string script = File.ReadAllText(item);
            //        server.ConnectionContext.ExecuteNonQuery(script);
            //    }
            //};

            string global =@"server=10.137.254.194\Externals;database=SocialSpaceForSNS;uid=SocialSpaceWebAccesser;pwd=Web@User_2011";
            using (SqlConnection conn = new SqlConnection(global))
            {
                Server server = new Server(new ServerConnection(conn));
                foreach (var item in paths)
                {
                    int max=0;
                   max=Convert.ToInt32( server.ConnectionContext.ExecuteScalar("select max(communityId) from Community"));
                    string script = string.Format(@"insert into Community (CommunityId, CommunityName,[Description],UniqueWord,ClientId,UserPassportId,DateCreated) values
({0},{1},{1},{1},1,110523211251349122,getdate())",max+1,siteName);
                    server.ConnectionContext.ExecuteNonQuery(script);
                }
            };

        }
    }
}
