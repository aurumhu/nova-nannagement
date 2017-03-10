using nAnnagement.DataAccess.EF.DataContext;
using nAnnagement.DataAccess.EF.Repositories;
using nAnnagement.Model.Interfaces;
using System.Data.Entity;

namespace nAnnagement.DataAccess.EF
{
    public class UnitOfWork : Nova.Patterns.DataAccess.EF.UnitOfWork, IUnitOfWork
    {
        public UnitOfWork(INAnnagementDbContext dbContext)
            : base(dbContext as DbContext)
        {
            this.ClientRepository = new ClientRepository(dbContext);
        }

        public IClientRepository ClientRepository { get; private set; }
    }
}
