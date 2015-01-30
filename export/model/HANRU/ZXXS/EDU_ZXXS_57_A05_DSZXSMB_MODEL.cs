namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A05_DSZXSMB_metadata))]
    public partial class EDU_ZXXS_57_A05_DSZXSMB
    {
        public EDU_ZXXS_57_A05_DSZXSMB()
        {
            MC = "";
            NR = "";
        }
        public class EDU_ZXXS_57_A05_DSZXSMB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "模板类型")]
            public Int32 MBLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "内容类型")]
            public Int32 NRLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "排列顺序")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "月份")]
            public Int32 YF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "位置")]
            public Int32 WZ { get; set; }


        }
    }
}
