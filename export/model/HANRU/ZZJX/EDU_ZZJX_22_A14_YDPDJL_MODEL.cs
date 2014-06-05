namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A14_YDPDJL_metadata))]
    public partial class EDU_ZZJX_22_A14_YDPDJL
    {
        public EDU_ZZJX_22_A14_YDPDJL()
        {
            TJSJ = DateTime.Now;
            JG = "";
        }
        public class EDU_ZZJX_22_A14_YDPDJL_metadata
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
            [Display(Name = "字段配置")]
            public Int32 ZDPZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评定教师")]
            public Int32 PDJSID { get; set; }


        }
    }
}
