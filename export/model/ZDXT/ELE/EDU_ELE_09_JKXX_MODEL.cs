namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_09_JKXX_metadata))]
    public partial class EDU_ELE_09_JKXX
    {
        public EDU_ELE_09_JKXX()
        {
            JKLB = "";
            JKSM = "";
            CRCS = "";
            TZWZ = "";
            TJSJ = DateTime.Now;
            TJYH = "";
        }
        public class EDU_ELE_09_JKXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接口类别")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JKLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接口说明")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JKSM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "传入参数")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CRCS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "跳转网址")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TZWZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开启状态")]
            public Int32 KQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "访问次数")]
            public Int32 FWCS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "添加用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJYH { get; set; }


        }
    }
}
