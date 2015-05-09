namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXX_11_A02_JSLYJL_metadata))]
    public partial class EDU_ZXXX_11_A02_JSLYJL
    {
        public EDU_ZXXX_11_A02_JSLYJL()
        {
            LYSJ = DateTime.Now;
            SHYHID = "";
        }
        public class EDU_ZXXX_11_A02_JSLYJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用教师")]
            public Int32 LYJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资产")]
            public Int32 ZCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用数量")]
            public Int32 LYSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "领用时间")]
            public DateTime LYSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


        }
    }
}
