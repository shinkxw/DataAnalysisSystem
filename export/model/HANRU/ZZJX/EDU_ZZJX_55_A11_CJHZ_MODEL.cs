namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A11_CJHZ_metadata))]
    public partial class EDU_ZZJX_55_A11_CJHZ
    {
        public EDU_ZZJX_55_A11_CJHZ()
        {
            NJID = "";
            DJRID = "";
            DJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_55_A11_CJHZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业课程库")]
            public Int32 ZYKCKID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩类型")]
            public Int32 CJLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "综合分")]
            public Int32 PFXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "绩点")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "登记人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记时间")]
            public DateTime DJSJ { get; set; }


        }
    }
}
