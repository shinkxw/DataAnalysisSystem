namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_03_XHSJJL_metadata))]
    public partial class EDU_ELE_03_XHSJJL
    {
        public EDU_ELE_03_XHSJJL()
        {
            NAME = "";
            LINK = "";
        }
        public class EDU_ELE_03_XHSJJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "应用")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "功能名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "地址")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LINK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最高消耗时间")]
            public Int32 MAXTIME { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "记录次数")]
            public Int32 JLCS { get; set; }


        }
    }
}
