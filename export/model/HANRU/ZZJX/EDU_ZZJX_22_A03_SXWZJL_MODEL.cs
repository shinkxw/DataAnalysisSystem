namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A03_SXWZJL_metadata))]
    public partial class EDU_ZZJX_22_A03_SXWZJL
    {
        public EDU_ZZJX_22_A03_SXWZJL()
        {
            WzTime = new DateTime(1900, 1, 1);
            WGWZJL = "";
            JYJXJGJCS = "";
        }
        public class EDU_ZZJX_22_A03_SXWZJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "违章时间")]
            public DateTime WzTime { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "违规违章记录")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WGWZJL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "经验教训及改进措施")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYJXJGJCS { get; set; }


        }
    }
}
