namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A01_KHDL_metadata))]
    public partial class EDU_ZXXS_51_A01_KHDL
    {
        public EDU_ZXXS_51_A01_KHDL()
        {
            MC = "";
            KDJYHIDLB = "";
            KDJYHXMLB = "";
        }
        public class EDU_ZXXS_51_A01_KHDL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考核对象")]
            public Int32 KHDX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记方式")]
            public Int32 DJFS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可登记用户ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDJYHIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可登记用户姓名列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KDJYHXMLB { get; set; }


        }
    }
}
