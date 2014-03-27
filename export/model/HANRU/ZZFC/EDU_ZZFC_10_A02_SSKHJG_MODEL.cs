namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A02_SSKHJG_metadata))]
    public partial class EDU_ZZFC_10_A02_SSKHJG
    {
        public EDU_ZZFC_10_A02_SSKHJG()
        {
            BJID = "";
            KHSJ = DateTime.Now;
        }
        public class EDU_ZZFC_10_A02_SSKHJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "寝室")]
            public Int32 QSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核项目")]
            public Int32 KHXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核时间")]
            public DateTime KHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核分值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal KHFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


        }
    }
}
