namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A10_SXYB_metadata))]
    public partial class EDU_ZZJX_22_A10_SXYB
    {
        public EDU_ZZJX_22_A10_SXYB()
        {
            GZXJ = "";
            TJSJ = DateTime.Now;
            ZDSFXM = "";
            ZDSFPY = "";
            SFDH = "";
            ZDSFPDSJ = DateTime.Now;
        }
        public class EDU_ZZJX_22_A10_SXYB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位信息")]
            public Int32 GWXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作小结")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZXJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导师傅姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导师傅评语")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFPY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "师傅电话")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFDH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "师傅评定")]
            public Int32 SFPD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "指导师傅评定时间")]
            public DateTime ZDSFPDSJ { get; set; }


        }
    }
}
