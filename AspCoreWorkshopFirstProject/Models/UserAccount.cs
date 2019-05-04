using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AspCoreWorkshopFirstProject.Models
{
	public class UserAccount
	{
		[Key]
		public Guid Id { get; set; }

		[Required, MaxLength(300)]
		public string Name { get; set; }

		[Required, MaxLength(300)]
		public string Family { get; set; }

		[Required, MaxLength(500), EmailAddress]
		public string Email { get; set; }

	}
}
