namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_23_A02_DGSXYQLJ_metadata))]
    public partial class EDU_ZZJX_23_A02_DGSXYQLJ
    {
        public EDU_ZZJX_23_A02_DGSXYQLJ()
        {
            TITLE = "";
            URL = "";
        }
        public class EDU_ZZJX_23_A02_DGSXYQLJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "友情链接类型")]
            public Int32 YQLJLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Display(Name = "图片")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IMAGEURL { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "链接")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


        }
    }
}
