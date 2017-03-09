using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(nAnnagement.Ui.Startup))]
namespace nAnnagement.Ui
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
