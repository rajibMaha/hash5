using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using RforU.DistributedPackage.Interfaces;

namespace RforU.DistributedPackage.Repositories
{
    public class CloudStorageTableRepository<TEntity> : ICloudStorageTableRepository<TEntity> where TEntity : class
    {
        private readonly string _storageConnectionString;
        private readonly string _tableName;
        public CloudStorageTableRepository()
        {
        }
        public CloudStorageTableRepository(string storageConnectionString , string tableName)
        {
            _storageConnectionString = storageConnectionString;
            _tableName = tableName;
        }
        public virtual void Add(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public virtual void AddRange(IEnumerable<TEntity> entities)
        {
            throw new NotImplementedException();
        }

        public virtual void Update(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public virtual void UpdateRange(IEnumerable<TEntity> entities)
        {
            throw new NotImplementedException();
        }

        public virtual void Remove(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public virtual void RemoveRange(IEnumerable<TEntity> entities)
        {
            throw new NotImplementedException();
        }

        public virtual int Count()
        {
            throw new NotImplementedException();
        }

        public virtual IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate)
        {
            throw new NotImplementedException();
        }


        public virtual TEntity GetSingleOrDefault(Expression<Func<TEntity, bool>> predicate)
        {
            throw new NotImplementedException();
        }


        public virtual TEntity Get(int id)
        {
            throw new NotImplementedException();
        }

        public virtual IEnumerable<TEntity> GetAll()
        {
            throw new NotImplementedException();
        }
    }
}
