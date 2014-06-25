namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A02_ZYMLSHQX_metadata))]
    public partial class EDU_ZYZX_01_A02_ZYMLSHQX
    {
        public EDU_ZYZX_01_A02_ZYMLSHQX()
        {
            YHID = "";
        }
        public class EDU_ZYZX_01_A02_ZYMLSHQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Display(Name = "目录ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLIDLB { get; set; }


        }
    }
}
