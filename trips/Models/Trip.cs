using System.ComponentModel.DataAnnotations;

namespace vacay.Models
{
  public class Trip
  {
    public int Id {get; set;}
    public string CreatedAt { get; set;}
    public string UpdatedAt { get; set;}
    [Required]
    public string Destination {get; set;}
    [Required]
    public string StartDate {get; set;}
    [Required]
    public string EndDate {get; set;}
  }
}