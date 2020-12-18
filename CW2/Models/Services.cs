using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CW2.Models
{
    public class Services
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Fee { get; set; }
        public Services()
        {

        }
        public Services(int Id,string Name,string Description, decimal Fee)
        {
            this.Id = Id;
            this.Name = Name;
            this.Description = Description;
            this.Fee = Fee;

        }
    }
}