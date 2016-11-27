using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HSM.Entity
{
    public class User : Credential
    {
        public int idUser { get; set; }
        public string UserName { get; set; }
       
        public string UserEmail { get; set; }
        public string UserMobile { get; set; }

        public int UserRoleId { get; set; }
        public string UserSSN { get; set; }

        public DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public int ModifiedBy { get; set; }

        public bool IsActive { get; set; }

    }

}

