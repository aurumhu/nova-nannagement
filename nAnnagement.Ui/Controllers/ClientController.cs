namespace nAnnagement.Ui.Controllers
{
    using Models;
    using System;
    using System.Threading.Tasks;
    using System.Web.Mvc;

    [Authorize]
    public class ClientController
    {
        public ClientController()
        {

        }

        public async Task<ActionResult> Index()
        {
            throw new NotImplementedException();
        }

        [HttpGet]
        public async Task<ActionResult> Add()
        {
            throw new NotImplementedException();
        }

        [HttpPost]
        public async Task<ActionResult> Add(ProjectDto project)
        {
            throw new NotImplementedException();
        }

        [HttpPost]
        public async Task<ActionResult> Delete(int projectId)
        {
            throw new NotImplementedException();
        }
    }
}