namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_50_A02_BJSBJL_metadata))]
    public partial class EDU_ZXXS_50_A02_BJSBJL
    {
        public EDU_ZXXS_50_A02_BJSBJL()
        {
            BJID = "";
            RQ = DateTime.Now;
        }
        public class EDU_ZXXS_50_A02_BJSBJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public DateTime RQ { get; set; }


        }
    }
}
