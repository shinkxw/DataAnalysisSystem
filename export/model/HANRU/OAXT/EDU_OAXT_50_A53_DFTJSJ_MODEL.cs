namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A53_DFTJSJ_metadata))]
    public partial class EDU_OAXT_50_A53_DFTJSJ
    {
        public EDU_OAXT_50_A53_DFTJSJ()
        {
            BDFDXBM = "";
            BDFDXMC = "";
            CKSJ = DateTime.Now;
            TJSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A53_DFTJSJ_metadata
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
            [Display(Name = "数据集")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "字段")]
            public Int32 ZDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "批次编号")]
            public Int32 PCBH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否手动修改")]
            public Int32 SFSDXG { get; set; }


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
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "参考时间")]
            public DateTime CKSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
