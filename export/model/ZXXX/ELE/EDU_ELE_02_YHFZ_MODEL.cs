namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_02_YHFZ_metadata))]
    public partial class EDU_ELE_02_YHFZ
    {
        public EDU_ELE_02_YHFZ()
        {
            YHID = "";
            FZMC = "";
            FZYHID = "";
        }
        public class EDU_ELE_02_YHFZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "分组")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上级分组")]
            public Int32 SJFZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分组名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分组用户ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZYHID { get; set; }


        }
    }
}
