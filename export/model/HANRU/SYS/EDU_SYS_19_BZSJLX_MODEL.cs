namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_SYS_19_BZSJLX_metadata))]
    public partial class EDU_SYS_19_BZSJLX
    {
        public EDU_SYS_19_BZSJLX()
        {
            SJLXMC = "";
        }
        public class EDU_SYS_19_BZSJLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据类型名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJLXMC { get; set; }


        }
    }
}
