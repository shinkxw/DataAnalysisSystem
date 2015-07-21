namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A06_CWJSGZXS_metadata))]
    public partial class EDU_ZZJG_25_A06_CWJSGZXS
    {
        public EDU_ZZJG_25_A06_CWJSGZXS()
        {
            CSLB = "";
        }
        public class EDU_ZZJG_25_A06_CWJSGZXS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业大类")]
            public Int32 ZYDLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业小类")]
            public Int32 ZYXLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处室类别")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学管理比例")]
            [Range(typeof(decimal), "0", "9")]
            public decimal JXGLBL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校教学比例")]
            [Range(typeof(decimal), "0", "9")]
            public decimal XXJXBL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "支持性比例")]
            [Range(typeof(decimal), "0", "9")]
            public decimal ZCXBL { get; set; }


        }
    }
}
