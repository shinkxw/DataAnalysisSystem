namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A08_CWJSGZJBDXM_metadata))]
    public partial class EDU_ZZJG_25_A08_CWJSGZJBDXM
    {
        public EDU_ZZJG_25_A08_CWJSGZJBDXM()
        {
            XMMC = "";
            XMIDLB = "";
            XMMCLB = "";
        }
        public class EDU_ZZJG_25_A08_CWJSGZJBDXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工资项目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工资项目名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMCLB { get; set; }


        }
    }
}
