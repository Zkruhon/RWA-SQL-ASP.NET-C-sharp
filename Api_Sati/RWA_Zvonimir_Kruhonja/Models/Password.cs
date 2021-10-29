using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Api_Sati.Models
{
    public class Password
    {

        public int Id { get; set; }

        [Required(ErrorMessage = "Enter Email")]
        [EmailAddress(ErrorMessage = "There was an error, please try again")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Enter Password")]
        [DataType(DataType.Password)]
        [StringLength(18, ErrorMessage = "The password must be at least 5 characters long", MinimumLength = 3)]
        public string Pwd { get; set; }

        [Required(ErrorMessage = "Enter Password")]
        [DataType(DataType.Password)]
        [StringLength(18, ErrorMessage = "The password must be atleast 5 characters long", MinimumLength = 3)]
        public string NewPwd { get; set; }

    }
}
