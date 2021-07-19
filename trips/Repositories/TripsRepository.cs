using System.Data;
using vacay.Models;
using System.Linq;
using System.Collections.Generic;

namespace vacay.Repositories
{
  public class TripsRepository
  {
    private readonly IDbConnection _db;
    public TripsRepository(IDbConnection db)
    {
      _db = db;
    }
    internal Trip Create(Trip t)
    {
      string sql = @"
      INSERT INTO
      trips(destination, startDate, endDate)
      Values (@Name, @startDate, @endDate);
      SELECT LAST_INSERT_ID();";
      t.Id = _db.ExecuteScalar<int>(sql, t);
      return t;
    }
    internal Trip GetTripById(int id)
    {
      string sql = @"
      SELECT
      c*,
      f*
      "
    }
  }
}