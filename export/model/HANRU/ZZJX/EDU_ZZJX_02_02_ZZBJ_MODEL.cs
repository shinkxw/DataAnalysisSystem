namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_02_02_ZZBJ_metadata))]
    public partial class EDU_ZZJX_02_02_ZZBJ
    {
        public EDU_ZZJX_02_02_ZZBJ()
        {
            XZBDM = "";
            ZZNJID = "";
            XZBMC = "";
            JBNY = "";
            JXJH = "";
            JGH = "";
            XQDM = "";
        }
        public class EDU_ZZJX_02_02_ZZBJ_metadata
        {
            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "行政班代码")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZBDM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业基本信息")]
            public Int32 ZYXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学校年级数据表")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZNJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "行政班名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZBMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "建班年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBNY { get; set; }


            [Display(Name = "班主任工号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRGH { get; set; }


            [Display(Name = "教室编号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSBH { get; set; }


            [Display(Name = "男生人数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal NANSRS { get; set; }


            [Display(Name = "女生人数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal NVSRS { get; set; }


            [Display(Name = "总人数")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZRS { get; set; }


            [Display(Name = "班长学号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZXH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学计划")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "机构号")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JGH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区代码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQDM { get; set; }


            [Display(Name = "班主任")]
            public Int32 BZRID { get; set; }


        }
    }
}
