namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_20_A07_XSPJKPJG_metadata))]
    public partial class EDU_ZZJG_20_A07_XSPJKPJG
    {
        public EDU_ZZJG_20_A07_XSPJKPJG()
        {
            IP = "";
            PJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_20_A07_XSPJKPJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评题目")]
            public Int32 KPTMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考评班级")]
            public Int32 KPBJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "IP地址")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评教时间")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            public Int32 FZ { get; set; }


        }
    }
}
