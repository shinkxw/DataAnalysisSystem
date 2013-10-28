namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_16_A02_PKSXX_metadata))]
    public partial class EDU_ZZXS_16_A02_PKSXX
    {
        public EDU_ZZXS_16_A02_PKSXX()
        {
            BZ = "";
            SQYY = "";
            SQSJ = new DateTime(1900, 1, 1);
            SHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_16_A02_PKSXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "贫困生类型")]
            public Int32 PKSLXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "申请原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQYY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核教师")]
            public Int32 SHJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


        }
    }
}
