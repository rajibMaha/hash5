namespace RforU.DistributedPackage.Interfaces
{
    public interface ICloudStorageTableRepository<TEntity> : IRepository<TEntity> where TEntity : class
    {
    }
}