namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A03_WJLX_metadata))]
    public partial class EDU_ZYZX_01_A03_WJLX
    {
        public EDU_ZYZX_01_A03_WJLX()
        {
            LXMC = "";
        }
        public class EDU_ZYZX_01_A03_WJLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


        }
    }
}
