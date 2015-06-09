namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_SYS_19_BZSJ_metadata))]
    public partial class EDU_SYS_19_BZSJ
    {
        public EDU_SYS_19_BZSJ()
        {
            BZSJMC = "";
            GLLJ = "";
        }
        public class EDU_SYS_19_BZSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标准数据名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZSJMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据类型")]
            public Int32 SJLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "管理链接")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GLLJ { get; set; }


        }
    }
}
