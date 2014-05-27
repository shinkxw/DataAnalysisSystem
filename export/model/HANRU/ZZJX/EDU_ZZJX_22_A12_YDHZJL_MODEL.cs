namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A12_YDHZJL_metadata))]
    public partial class EDU_ZZJX_22_A12_YDHZJL
    {
        public EDU_ZZJX_22_A12_YDHZJL()
        {
            HZNR = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_22_A12_YDHZJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习班")]
            public Int32 SXBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "汇总内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HZNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
