using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Alquds_book_store.Startup))]
namespace Alquds_book_store
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
