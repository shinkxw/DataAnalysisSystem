namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A18_SHJL_metadata))]
    public partial class EDU_OAXT_50_A18_SHJL
    {
        public EDU_OAXT_50_A18_SHJL()
        {
            SHYHID = "";
            SHSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_OAXT_50_A18_SHJL_metadata
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
            [Display(Name = "审核节点")]
            public Int32 SHJDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分结果")]
            public Int32 DFJGID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核结果")]
            public Int32 SHJG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
