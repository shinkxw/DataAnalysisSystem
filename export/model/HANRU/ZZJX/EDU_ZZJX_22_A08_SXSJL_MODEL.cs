namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A08_SXSJL_metadata))]
    public partial class EDU_ZZJX_22_A08_SXSJL
    {
        public EDU_ZZJX_22_A08_SXSJL()
        {
            JLMC = "";
            JLNR = "";
        }
        public class EDU_ZZJX_22_A08_SXSJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "简历名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "简历内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLNR { get; set; }


        }
    }
}
