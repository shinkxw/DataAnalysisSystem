namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_01_ZTJXJH_metadata))]
    public partial class EDU_ZZJX_03_01_ZTJXJH
    {
        public EDU_ZZJX_03_01_ZTJXJH()
        {
            JHBH = "";
            JHNJ = "";
            SFKY = "";
        }
        public class EDU_ZZJX_03_01_ZTJXJH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划编号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计划年级")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHNJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业编号")]
            public Int32 ZYXXID { get; set; }


            [Display(Name = "计划专业名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHZYMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总学分要求")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXFYQ { get; set; }


            [Display(Name = "建立年月")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLNY { get; set; }


            [Display(Name = "适用学制")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SYXZ { get; set; }


            [Display(Name = "培养目标")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PYMB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否可用")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKY { get; set; }


            [Display(Name = "附件")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业人数")]
            public Int32 ZYRS { get; set; }


        }
    }
}
