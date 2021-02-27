using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CrudApi.Data.Repository
{
    public class BaseRepository
    {
        private readonly string CnnString;

        
        
        public BaseRepository (string CnnString)
        {
            this.CnnString = CnnString;
        }
        public IDbConnection GetConnection()
        {
            return new SqlConnection(CnnString);
        }
    }
}
