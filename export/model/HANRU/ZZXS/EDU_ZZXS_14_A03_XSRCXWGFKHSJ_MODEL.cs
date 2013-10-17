namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A03_XSRCXWGFKHSJ_metadata))]
    public partial class EDU_ZZXS_14_A03_XSRCXWGFKHSJ
    {
        public EDU_ZZXS_14_A03_XSRCXWGFKHSJ()
        {
            KHBJDM = "";
            KHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_14_A03_XSRCXWGFKHSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核班级代码")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHBJDM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核表")]
            public Int32 KHBID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核项目")]
            public Int32 KHXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核分值")]
            public Int32 KHFZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核时间")]
            public DateTime KHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "记录教师")]
            public Int32 JLJSID { get; set; }


        }
    }
}
