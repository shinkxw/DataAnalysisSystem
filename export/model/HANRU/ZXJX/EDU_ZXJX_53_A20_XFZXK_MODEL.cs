namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_53_A20_XFZXK_metadata))]
    public partial class EDU_ZXJX_53_A20_XFZXK
    {
        public EDU_ZXJX_53_A20_XFZXK()
        {
            XKMC = "";
            XKKSSJ = DateTime.Now;
            XKJSSJ = DateTime.Now;
            ECXKKSSJ = DateTime.Now;
            ECXKJSSJ = DateTime.Now;
            XKFFYLC = "";
            KXKCLXIDLB = "";
            KXKCLXMCLB = "";
            XKBJIDLB = "";
        }
        public class EDU_ZXJX_53_A20_XFZXK_metadata
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选课名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XKMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课开始时间")]
            public DateTime XKKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选课结束时间")]
            public DateTime XKJSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否允许所有学生二次选课")]
            public Int32 SFYXSYXSECXK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "二次选课开始时间")]
            public DateTime ECXKKSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "二次选课结束时间")]
            public DateTime ECXKJSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选课方法与流程")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XKFFYLC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可选课程类型ID列表")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXKCLXIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "可选课程类型名称列表")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KXKCLXMCLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "选课班级ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XKBJIDLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生最多选课门数")]
            public Int32 XSZDXKMS { get; set; }


        }
    }
}
