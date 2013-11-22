namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A05_ZYWJQX_metadata))]
    public partial class EDU_ZYZX_01_A05_ZYWJQX
    {
        public EDU_ZYZX_01_A05_ZYWJQX()
        {
            QXLB = "";
        }
        public class EDU_ZYZX_01_A05_ZYWJQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源文件")]
            public Int32 ZYWJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户类型")]
            public Int32 YHLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "权限列表")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QXLB { get; set; }


        }
    }
}
