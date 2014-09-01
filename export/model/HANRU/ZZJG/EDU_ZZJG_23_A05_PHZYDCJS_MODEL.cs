namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A05_PHZYDCJS_metadata))]
    public partial class EDU_ZZJG_23_A05_PHZYDCJS
    {
        public EDU_ZZJG_23_A05_PHZYDCJS()
        {
            JXB = "";
            XM = "";
        }
        public class EDU_ZZJG_23_A05_PHZYDCJS_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调查名称")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学部")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否被教学部评")]
            public Int32 SFJRBMHP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否可评全校")]
            public Int32 SFKPQX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否被全校评")]
            public Int32 SFBQXP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教学部")]
            public Int32 JXBID { get; set; }


        }
    }
}
