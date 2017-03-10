using nAnnagement.Model.Interfaces;

namespace nAnnagement.Ui.Coordinators
{
    public class ClientCoordinator
    {
        private IUnitOfWork unitOfWork;

        public ClientCoordinator(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }
    }
}