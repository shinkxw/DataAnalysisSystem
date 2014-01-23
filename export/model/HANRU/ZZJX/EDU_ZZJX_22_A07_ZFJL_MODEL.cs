namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A07_ZFJL_metadata))]
    public partial class EDU_ZZJX_22_A07_ZFJL
    {
        public EDU_ZZJX_22_A07_ZFJL()
        {
            ZFSJ = DateTime.Now;
            ZFJL = "";
        }
        public class EDU_ZZJX_22_A07_ZFJL_metadata
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
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "走访时间")]
            public DateTime ZFSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "走访记录")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZFJL { get; set; }


        }
    }
}
