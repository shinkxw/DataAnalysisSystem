namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A15_DFJG_metadata))]
    public partial class EDU_OAXT_50_A15_DFJG
    {
        public EDU_OAXT_50_A15_DFJG()
        {
            BDFDXBM = "";
            BDFDXMC = "";
            WBZ = "";
            DFYHID = "";
            CKSJ = DateTime.Now;
            TJSJ = DateTime.Now;
            CKSJMC = "";
        }
        public class EDU_OAXT_50_A15_DFJG_metadata
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
            [Display(Name = "打分大类")]
            public Int32 DFDLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分节点")]
            public Int32 DFJDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分批次")]
            public Int32 DFPCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被打分对象编码")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDFDXBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "被打分对象名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BDFDXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分选项")]
            public Int32 DFXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文本值")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WBZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "参考时间")]
            public DateTime CKSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核记录")]
            public Int32 SHJLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "参考时间名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CKSJMC { get; set; }


        }
    }
}
