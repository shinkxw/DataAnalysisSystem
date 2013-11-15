namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_37_A01_JNJDXM_metadata))]
    public partial class EDU_ZZJX_37_A01_JNJDXM
    {
        public EDU_ZZJX_37_A01_JNJDXM()
        {
            JNMC = "";
            JNZY = "";
            JNGZ = "";
            JDJG = "";
        }
        public class EDU_ZZJX_37_A01_JNJDXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "技能名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JNMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "技能专业")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JNZY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "技能工种")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JNGZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "鉴定机构")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申报状态")]
            public Int32 SBZT { get; set; }


        }
    }
}
