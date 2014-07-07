namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A05_PHZYKPJS_metadata))]
    public partial class EDU_ZZJG_22_A05_PHZYKPJS
    {
        public EDU_ZZJG_22_A05_PHZYKPJS()
        {
            XSZW = "";
            TJZW = "";
            JXB = "";
            JYZ = "";
            XM = "";
        }
        public class EDU_ZZJG_22_A05_PHZYKPJS_metadata
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "显示职务")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSZW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "统计职务")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJZW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学部")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教研组")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "姓名")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否可评全校")]
            public Int32 SFKPQX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否被全校评")]
            public Int32 SFBQXP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否计入部门互评")]
            public Int32 SFJRBMHP { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否不被全校评")]
            public Int32 SFBBQXP { get; set; }


        }
    }
}
