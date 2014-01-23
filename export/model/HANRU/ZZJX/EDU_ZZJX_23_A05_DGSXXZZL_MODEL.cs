namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_23_A05_DGSXXZZL_metadata))]
    public partial class EDU_ZZJX_23_A05_DGSXXZZL
    {
        public EDU_ZZJX_23_A05_DGSXXZZL()
        {
            BT = "";
            FBR = "";
            FBSJ = DateTime.Now;
            NR = "";
        }
        public class EDU_ZZJX_23_A05_DGSXXZZL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发布人")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FBR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发布时间")]
            public DateTime FBSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
