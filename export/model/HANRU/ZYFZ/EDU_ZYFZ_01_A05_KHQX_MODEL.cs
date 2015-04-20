namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYFZ_01_A05_KHQX_metadata))]
    public partial class EDU_ZYFZ_01_A05_KHQX
    {
        public EDU_ZYFZ_01_A05_KHQX()
        {
            FZMC = "";
            KHRID = "";
            BKHRIDLB = "";
            BKHRMCLB = "";
        }
        public class EDU_ZYFZ_01_A05_KHQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分组名称")]
            [StringLength(80)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KHRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被考核人ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKHRIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被考核人名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKHRMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核等级")]
            public Int32 KHDJ { get; set; }


        }
    }
}
