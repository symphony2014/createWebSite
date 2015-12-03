using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.DirectoryServices;
using System.IO;
using System.Linq;
using System.Xml.Linq;

namespace CreateWebSiteForIIS
{
    class Program
    {
        public static log4net.ILog instance = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        static void Main(string[] args)
        {
            try
            {

                log4net.Config.XmlConfigurator.Configure();
                Console.WriteLine("Please input your site name:");
                string siteName = Console.ReadLine();
                //string sourceDir = @"D:\WebRoot\RealSite\socialspace_template";
                //string destDir = @"D:\WebRoot\RealSite\" + siteName;
                string sourceDir = ConfigurationManager.AppSettings["source"];
                string destDir = Path.Combine(ConfigurationManager.AppSettings["dest"], siteName);
                //string sourceDir = @"D:\socialspace_template";
                //string destDir = @"D:\" + siteName;
                string err = string.Empty;



                //TODO: file copy
                destDir += DateTime.Now.ToString("yyyyMMddhh");
                if (!Directory.Exists(destDir))
                {
                    Directory.CreateDirectory(destDir);
                }
                CopyFilesRecursively(sourceDir, destDir);



                //TODO:change webconfig
                string c = "web.config";
                List<string> configs = new List<string>()
            {
                Path.Combine(destDir,"adminn_socialspace_com_cn",c),
                Path.Combine(destDir,"api_socialspace_com_cn",c),
                Path.Combine(destDir,"socialspace_com_cn",c)
            };
                foreach (var item in configs)
                {
                    ConfigModify(item, Path.GetFileName(destDir), siteName);
                }

                //TODO: create website
                string webSite = string.Format("{0}.socialspace.com.cn", siteName);
                CreateWebSite(webSite, Path.Combine(destDir, "socialspace_com_cn"), "80", webSite, "", siteName, out err);
                webSite = string.Format("{0}.adminn.socialspace.com.cn", siteName);
                CreateWebSite(webSite, Path.Combine(destDir, "adminn_socialspace_com_cn"), "80", webSite, "", siteName, out err);
                webSite = string.Format("{0}.rec.socialspace.com.cn", siteName);
                CreateWebSite(webSite, Path.Combine(destDir, "api_socialspace_com_cn"), "80", webSite, "", siteName, out err);


                //TODO: update datebase

            }
            catch (Exception ex)
            {
                instance.Debug("debug:", ex);
                throw;
            }

            Console.WriteLine("complete!");
            Console.ReadKey();

        }
        //private static void ExecuteSqlScript()
        //{
        //    string sqlConnectionString = @"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=ccwebgrity;Data Source=SURAJIT\SQLEXPRESS";

        //    string script = File.ReadAllText(@"E:\Project Docs\MX462-PD\MX756_ModMappings1.sql");

        //    SqlConnection conn = new SqlConnection(sqlConnectionString);

        //    Server server = new Server(new ServerConnection(conn));

        //    server.ConnectionContext.ExecuteNonQuery(script);

        //}
        public static void CopyFilesRecursively(string sourceDir, string targetDir)
        {
            DirectoryInfo source = new DirectoryInfo(sourceDir);
            DirectoryInfo target = new DirectoryInfo(targetDir);
            foreach (DirectoryInfo dir in source.GetDirectories())
                CopyFilesRecursively(dir.FullName, target.CreateSubdirectory(dir.Name).FullName);
            foreach (FileInfo file in source.GetFiles())
                file.CopyTo(Path.Combine(target.FullName, file.Name), true);
        }
        private static void ConfigModify(string path, string destDir, string siteName)
        {
            var xml = XDocument.Load(path);

            Action<string, string> setAttr = (attrName, value) =>
            {
                var attr = (from x in xml.Root.Element("appSettings").Elements("add")
                            where x.Attribute("key").Value == attrName
                            select x.Attribute("value")
                            ).SingleOrDefault();
                if (attr != null)
                {
                    attr.Value = value;
                }
            };
            Action<string, string> setConn = (attrName, value) =>
            {
                var attr = xml.Root.Element("connectionStrings").Elements("add").FirstOrDefault().Attribute("connectionString");
                if (attr != null)
                {
                    attr.Value = value;
                }
            };
            setConn("connectionString", string.Format(@"server=10.137.254.194\Externals;database=SocialSpaceFor{0};uid=SocialSpaceWebAccesser;pwd=Web@User_2011", siteName));
            setAttr("MenuLabel", string.Format(@"D:\WebRoot\RealSite\{0}\adminn_socialspace_com_cn\Config\MenuLabel\", destDir));
            setAttr("ConfigPageXML", string.Format(@"D:\WebRoot\RealSite\{0}\rec_socialspace_com_cn\ConfigPage.xml", destDir));
            setAttr("PDFPath", string.Format(@"D:\WebRoot\RealSite\{0}\MultiLanguageFonts\arialuni.ttf", destDir));
            setAttr("ErrorReport", string.Format(@"D:\WebRoot\RealSite\{0}\adminn_socialspace_com_cn\Config\ErrorReport\", destDir));
            setAttr("ErrorMessage", string.Format(@"D:\WebRoot\RealSite\{0}\adminn_socialspace_com_cn\Config\ErrorMessage\", destDir));
            setAttr("Module", string.Format(@"D:\WebRoot\RealSite\{0}\adminn_socialspace_com_cn\Config\Module\", destDir));
            setAttr("Resource_Upload", string.Format(@"D:\WebRoot\RealSite\{0}\rec_socialspace_com_cn\Upload", destDir));
            setAttr("Resource_File", string.Format(@"D:\WebRoot\RealSite\{0}\rec_socialspace_com_cn\Display", destDir));
            setAttr("Resource_Display", string.Format(@"http://{0}.rec.socialspace.com.cn", siteName));
            setAttr("httptop", string.Format(@"http://{0}.socialspace.com.cn", siteName));
            setAttr("NationalityConfig", string.Format(@"D:\WebRoot\RealSite\{0}\rec_socialspace_com_cn\NationalityConfig.xml", destDir));
            setAttr("CategoryConfigPage", string.Format(@"D:\WebRoot\RealSite\{0}\rec_socialspace_com_cn\", destDir));
            setAttr("MobileDownLoad", string.Format(@"http://{0}.socialspace.com.cn/mobile/index.htm", siteName));
            setAttr("SectionListImg", string.Format(@"http://{0}.rec.socialspace.com.cn/Index/Resource/ImageForNormal/20150304184026_5637.jpg", siteName));


            xml.Save(path);

        }

        public static List<string> DirSearch(string sDir, string pattern)
        {
            List<string> configFiles = new List<string>();
            try
            {
                foreach (string d in Directory.GetDirectories(sDir))
                {
                    foreach (string f in Directory.GetFiles(d, pattern))
                    {
                        configFiles.Add(f);
                    }
                    DirSearch(d, pattern);
                }
            }
            catch (System.Exception excpt)
            {
                instance.Debug("debug:", excpt);

                Console.WriteLine(excpt.Message);
            }
            return configFiles;
        }

        public static int CreateWebSite(string webSiteName, string PhysicalPath, string PortNumber, string HostHeader, string DefaultDoc, string appPoolName, out string errorMessage)
        {
            errorMessage = string.Empty;

            string metaPath = "IIS://localhost/W3SVC";
            try
            {
                DirectoryEntry root = new DirectoryEntry(metaPath);
                // Find unused ID value for new web site
                int siteID = 1;
                foreach (DirectoryEntry e in root.Children)
                {
                    if (e.SchemaClassName == "IIsWebServer")
                    {
                        int ID = Convert.ToInt32(e.Name);
                        if (ID >= siteID)
                        {
                            siteID = ID + 1;
                        }
                    }
                }

                DirectoryEntry site = (DirectoryEntry)root.Invoke("Create", "IIsWebServer", siteID);
                Action<string, string> addMIME = (extension, type) =>
                {
                    PropertyValueCollection propValues = site.Properties["MimeMap"];
                    IISOle.MimeMapClass newObj = new IISOle.MimeMapClass();
                    newObj.Extension = extension;
                    newObj.MimeType = type;
                    propValues.Add(newObj);
                };
                site.Invoke("Put", "ServerComment", webSiteName.Replace('.', '_'));
                site.Invoke("Put", "KeyType", "IIsWebServer");

                site.Invoke("Put", "ServerBindings", ":" + PortNumber + ":" + HostHeader);
                site.Invoke("Put", "AccessScript", true);
                site.Invoke("Put", "ServerState", 2);
                site.Invoke("Put", "FrontPageWeb", 1);
                site.Invoke("Put", "DefaultDoc", DefaultDoc);

                site.Invoke("Put", "ServerAutoStart", 1);
                site.Invoke("Put", "ServerSize", 1);

                addMIME(".flv", "flv-application/octet-stream");

                if (webSiteName.Contains("rec"))
                {
                    addMIME(".mp4", "video/mp4");
                    addMIME(".apk", "application/vnd.android.package-archive");
                    addMIME(".ipa", "application/octet-stream");
                }
                site.CommitChanges();

                site.Invoke("SetInfo");





                DirectoryEntry siteVDir = site.Children.Add("Root", "IISWebVirtualDir");

                if (appPoolName != "")
                {
                    object[] param = { 0, appPoolName, true };
                    siteVDir.Invoke("AppCreate3", param);
                }

                siteVDir.Properties["AppIsolated"][0] = 2;

                siteVDir.Properties["Path"][0] = PhysicalPath;

                siteVDir.Properties["AccessFlags"][0] = 513;
                siteVDir.Properties["AspEnableParentPaths"][0] = true;
                siteVDir.Properties["AppFriendlyName"][0] = webSiteName;
                siteVDir.Properties["FrontPageWeb"][0] = 1;
                siteVDir.Properties["AppRoot"][0] = "LM/W3SVC/" + siteID + "/Root";
                siteVDir.Properties["AppFriendlyName"][0] = "Root";
                siteVDir.Properties["AspSessionTimeout"][0] = "60";
                siteVDir.Properties["AuthFlags"].Value = 4;//integrity windows Authentication checked
                siteVDir.Properties["AuthAnonymous"][0] = true;//Anonymouse uncheck

                //For SSO, Set special settings for  WinLogin.aspx page -- This has beed added after version 8.1.1001
                DirectoryEntry deLoginDir;
                deLoginDir = siteVDir.Children.Add("WinLogin.aspx", siteVDir.SchemaClassName);
                deLoginDir.Properties["AuthAnonymous"][0] = false;//Anonymouse uncheck
                deLoginDir.Properties["AuthFlags"].Value = 4;//integrity windows Authentication checked
                deLoginDir.CommitChanges();
                ////////////////////////////////////////////

                siteVDir.CommitChanges();

                siteVDir.Invoke("AppDelete");
                siteVDir.Invoke("AppCreate", true);
                siteVDir.Invoke("AppEnable");

                site.CommitChanges();

                //create api virtual path
                if (webSiteName.ToLower() == (appPoolName + ".socialspace.com.cn"))
                {
                    CreateVDir(site.Path, "api", PhysicalPath.Replace(Path.GetFileName(PhysicalPath), "api_socialspace_com_cn"));
                }
                #region AssignApplicationPool

                DirectoryEntry vDir = new DirectoryEntry("IIS://localhost/W3SVC/" + siteID.ToString() + "/Root");
                string className = vDir.SchemaClassName.ToString();
                if (className.EndsWith("VirtualDir"))
                {
                    object[] param = { 0, appPoolName, true };
                    vDir.Invoke("AppCreate3", param);
                    vDir.Properties["AppIsolated"][0] = "2";
                    vDir.CommitChanges();
                }
                else
                {
                    return -1;
                }

                if (Environment.OSVersion.Version.Major < 6)
                {
                    try
                    {
                        const string aspNetV1 = "1.0.3705";
                        const string aspNetV11 = "1.1.4322";
                        const string aspNetV2 = "2.0.50727";
                        const string aspNetV4 = "4.0.30319";
                        const string targetAspNetVersion = aspNetV4;

                        //loop through the script maps
                        for (var i = 0; i < siteVDir.Properties["ScriptMaps"].Count; i++)
                        {
                            //replace the versions if they exists
                            siteVDir.Properties["ScriptMaps"][i] =
                                siteVDir.Properties["ScriptMaps"][i].ToString().Replace(aspNetV1, targetAspNetVersion);
                            siteVDir.Properties["ScriptMaps"][i] =
                                siteVDir.Properties["ScriptMaps"][i].ToString().Replace(aspNetV11, targetAspNetVersion);
                            siteVDir.Properties["ScriptMaps"][i] =
                                siteVDir.Properties["ScriptMaps"][i].ToString().Replace(aspNetV2, targetAspNetVersion);
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        instance.Debug("debug:", ex);

                        errorMessage = ex.Message + Environment.NewLine + ex.StackTrace;
                    }
                }
                else
                {
                    string appPoolPath = @"IIS://localhost/W3SVC/AppPools/" + appPoolName;
                    try
                    {
                        var appPoolEntry = new DirectoryEntry(appPoolPath);
                        appPoolEntry.Properties["managedRuntimeVersion"].Value = "v4.0";
                        appPoolEntry.Invoke("SetInfo", null);
                        appPoolEntry.CommitChanges();
                        appPoolEntry.Close();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        instance.Debug("debug:", ex);

                        errorMessage = ex.Message + Environment.NewLine + ex.StackTrace;
                    }

                    siteVDir.CommitChanges();
                    siteVDir.Close();
                }

                #endregion

                Console.WriteLine(string.Format("create site:{0}", webSiteName));
                return siteID;
            }
            catch (Exception ex)
            {
                instance.Debug("debug:", ex);

                Console.WriteLine(ex.ToString());
                return -1;
            }

        }
        static void CreateVDir(string metabasePath, string vDirName, string physicalPath)
        {
            metabasePath = Path.Combine(metabasePath, "Root");
            //  metabasePath is of the form "IIS://<servername>/<service>/<siteID>/Root[/<vdir>]"
            //    for example "IIS://localhost/W3SVC/1/Root" 
            //  vDirName is of the form "<name>", for example, "MyNewVDir"
            //  physicalPath is of the form "<drive>:\<path>", for example, "C:\Inetpub\Wwwroot"
            Console.WriteLine("\nCreating virtual directory {0}/{1}, mapping the Root application to {2}:",
                metabasePath, vDirName, physicalPath);

            try
            {
                DirectoryEntry site = new DirectoryEntry(metabasePath);
                string className = site.SchemaClassName.ToString();
                if ((className.EndsWith("Server")) || (className.EndsWith("VirtualDir")))
                {
                    DirectoryEntries vdirs = site.Children;
                    DirectoryEntry newVDir = vdirs.Add(vDirName, (className.Replace("Service", "VirtualDir")));
                    newVDir.Properties["Path"][0] = physicalPath;
                    newVDir.Properties["AccessScript"][0] = true;
                    // These properties are necessary for an application to be created.
                    newVDir.Properties["AppFriendlyName"][0] = vDirName;
                    newVDir.Properties["AppIsolated"][0] = "1";
                    newVDir.Properties["AppRoot"][0] = "/LM" + metabasePath.Substring(metabasePath.IndexOf("/", ("IIS://".Length)));

                    newVDir.CommitChanges();

                    Console.WriteLine(" Done.");
                }
                else
                    Console.WriteLine(" Failed. A virtual directory can only be created in a site or virtual directory node.");
            }
            catch (Exception ex)
            {
                instance.Debug("debug:", ex);

                Console.WriteLine("Failed in CreateVDir with the following exception: \n{0}", ex.Message);
            }
        }
        static void SetMimeTypeProperty(string metabasePath, string newExtension, string newMimeType)
        {
            //  metabasePath is of the form "IIS://<servername>/<path>"
            //    for example "IIS://localhost/W3SVC/1/Root" 
            //  newExtension is of the form ".<extension>", for example, ".hlp"
            //  newMimeType is of the form "<application>", for example, "application/winhlp"
            Console.WriteLine("\nAdding {1}->{2} to the MimeMap property at {0}:", metabasePath, newExtension, newMimeType);

            try
            {
                DirectoryEntry path = new DirectoryEntry(metabasePath);
                PropertyValueCollection propValues = path.Properties["MimeMap"];
                Console.WriteLine(" Old value of MimeMap has {0} elements", propValues.Count);

                object exists = null;
                foreach (object value in propValues)
                {
                    // IISOle requires a reference to the Active DS IIS Namespace Provider in Visual Studio .NET
                    IISOle.IISMimeType mimetypeObj = (IISOle.IISMimeType)value;
                    Console.WriteLine("  {0}->{1}", mimetypeObj.Extension, mimetypeObj.MimeType);
                    if (newExtension == mimetypeObj.Extension)
                        exists = value;
                }

                if (null != exists)
                {
                    propValues.Remove(exists);
                    Console.WriteLine(" Found an entry for {0}; removing it before adding the new one.", newExtension);
                }

                IISOle.MimeMapClass newObj = new IISOle.MimeMapClass();
                newObj.Extension = newExtension;
                newObj.MimeType = newMimeType;
                propValues.Add(newObj);
                path.CommitChanges();
                Console.WriteLine(" Done.");

            }
            catch (Exception ex)
            {
                instance.Debug("debug:", ex);

                if ("HRESULT 0x80005006" == ex.Message)
                    Console.WriteLine(" Property MimeMap does not exist at {0}", metabasePath);
                else
                    Console.WriteLine("Failed in SetMimeTypeProperty with the following exception: \n{0}", ex.Message);
            }
        }
    }
}
