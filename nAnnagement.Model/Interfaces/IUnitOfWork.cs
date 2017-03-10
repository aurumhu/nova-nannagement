namespace nAnnagement.Model.Interfaces
{
    public interface IUnitOfWork : Nova.Patterns.DataAccess.Common.IUnitOfWork
    {
        IClientRepository ClientRepository { get; }
    }
}
