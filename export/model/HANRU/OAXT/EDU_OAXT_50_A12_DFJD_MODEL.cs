namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A12_DFJD_metadata))]
    public partial class EDU_OAXT_50_A12_DFJD
    {
        public EDU_OAXT_50_A12_DFJD()
        {
            JDMC = "";
            DFDXJDBMJH = "";
            DFJSGXIDLB = "";
            SHJSGXIDLB = "";
            DFZB = "";
        }
        public class EDU_OAXT_50_A12_DFJD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "大类")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "父节点")]
            public Int32 FJDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否打分项")]
            public Int32 SFDFX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "节点名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否继承上级设置")]
            public Int32 SFJCSJSZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分对象节点编码集合")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFDXJDBMJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分角色关系ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFJSGXIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核角色关系ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHJSGXIDLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分方式")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分对象层级")]
            public Int32 DFDXCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分频次")]
            public Int32 DFPC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分指标")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFZB { get; set; }


        }
    }
}
