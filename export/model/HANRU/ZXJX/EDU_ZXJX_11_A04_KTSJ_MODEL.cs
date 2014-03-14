namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_11_A04_KTSJ_metadata))]
    public partial class EDU_ZXJX_11_A04_KTSJ
    {
        public EDU_ZXJX_11_A04_KTSJ()
        {
            KTMC = "";
            KTZT = "";
            KTNR = "";
            SQSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            JXSJ = DateTime.Now;
        }
        public class EDU_ZXJX_11_A04_KTSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题主题")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请教师")]
            public Int32 SQJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核教师")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "节项状态")]
            public Int32 JXZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "节项时间")]
            public DateTime JXSJ { get; set; }


        }
    }
}
