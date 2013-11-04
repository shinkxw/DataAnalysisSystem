namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_04_A05_JCFK_metadata))]
    public partial class EDU_ZZJX_04_A05_JCFK
    {
        public EDU_ZZJX_04_A05_JCFK()
        {
            FKXX = "";
            FKSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_04_A05_JCFK_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Display(Name = "教材")]
            public Int32 JCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "反馈信息")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FKXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "反馈时间")]
            public DateTime FKSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "反馈教师")]
            public Int32 FKJSID { get; set; }


        }
    }
}
