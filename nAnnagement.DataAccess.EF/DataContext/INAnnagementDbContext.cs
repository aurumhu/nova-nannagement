namespace nAnnagement.DataAccess.EF.DataContext
{
    using nAnnagement.Model;
    using System.Data.Entity;

    public interface INAnnagementDbContext
    {
        DbSet<Client> Clients { get; set; }
    }
}
