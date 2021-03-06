namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_02_A01_XNGWSJ_metadata))]
    public partial class EDU_ZXJZ_02_A01_XNGWSJ
    {
        public EDU_ZXJZ_02_A01_XNGWSJ()
        {
            JGH = "";
            ZWMC = "";
        }
        public class EDU_ZXJZ_02_A01_XNGWSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "机构号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JGH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "职务名称")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZWMC { get; set; }


        }
    }
}
