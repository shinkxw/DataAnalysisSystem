namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A09_WXJH_metadata))]
    public partial class EDU_OAXT_15_A09_WXJH
    {
        public EDU_OAXT_15_A09_WXJH()
        {
            Title = "";
            Content = "";
        }
        public class EDU_OAXT_15_A09_WXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ά������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Content { get; set; }


        }
    }
}
