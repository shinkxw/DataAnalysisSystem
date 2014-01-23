namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A06_SXRZ_metadata))]
    public partial class EDU_ZZJX_22_A06_SXRZ
    {
        public EDU_ZZJX_22_A06_SXRZ()
        {
            TJSJ = DateTime.Now;
            RZBT = "";
            RZNR = "";
        }
        public class EDU_ZZJX_22_A06_SXRZ_metadata
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
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "日志标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZBT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "日志内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZNR { get; set; }


        }
    }
}
