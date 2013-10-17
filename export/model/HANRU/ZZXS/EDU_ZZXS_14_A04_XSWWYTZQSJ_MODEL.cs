namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A04_XSWWYTZQSJ_metadata))]
    public partial class EDU_ZZXS_14_A04_XSWWYTZQSJ
    {
        public EDU_ZZXS_14_A04_XSWWYTZQSJ()
        {
            JXBMC = "";
            ZQNR = "";
            ZQSJ = new DateTime(1900, 1, 1);
            TJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_14_A04_XSWWYTZQSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤项目")]
            public Int32 ZQXMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学部名称")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXBMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤人员类型")]
            public Int32 ZQRYLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤人员")]
            public Int32 ZQRYID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "值勤内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZQNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "值勤时间")]
            public DateTime ZQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
