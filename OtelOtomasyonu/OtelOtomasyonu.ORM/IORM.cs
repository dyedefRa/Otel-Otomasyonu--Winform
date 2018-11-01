using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM
{
  public  interface IORM<TT> where TT:class
    {
        DataTable Select();
        bool Insert(TT entity);
        bool Update(TT entity);
        bool Delete(TT entity);
        object InsertScaler(TT entity);

    }
}
