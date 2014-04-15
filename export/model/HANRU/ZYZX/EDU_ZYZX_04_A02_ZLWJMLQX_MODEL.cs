namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_04_A02_ZLWJMLQX_metadata))]
    public partial class EDU_ZYZX_04_A02_ZLWJMLQX
    {
        public EDU_ZYZX_04_A02_ZLWJMLQX()
        {
            YHID = "";
        }
        public class EDU_ZYZX_04_A02_ZLWJMLQX_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源目录")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "功能编号")]
            public Int32 GNBH { get; set; }


        }
    }
}
