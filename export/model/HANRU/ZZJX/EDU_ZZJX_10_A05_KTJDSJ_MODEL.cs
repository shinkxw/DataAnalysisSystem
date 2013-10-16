namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_10_A05_KTJDSJ_metadata))]
    public partial class EDU_ZZJX_10_A05_KTJDSJ
    {
        public EDU_ZZJX_10_A05_KTJDSJ()
        {
            JDMC = "";
            JDGZNR = "";
            SCSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_10_A05_KTJDSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课题")]
            public Int32 KTID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "阶段名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "阶段工作内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDGZNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


        }
    }
}
