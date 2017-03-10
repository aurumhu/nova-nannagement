namespace nAnnagement.DataAccess.EF.Repositories
{
    using DataContext;
    using nAnnagement.Model;
    using nAnnagement.Model.Interfaces;
    using Nova.Patterns.DataAccess.EF;
    using System.Data.Entity;

    public class ClientRepository : RepositoryBase<Client>, IClientRepository
    {
        public ClientRepository(INAnnagementDbContext dbContext) : base(dbContext as DbContext)
        {

        }
    }
}
