namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A03_SXGW_metadata))]
    public partial class EDU_ZZJX_21_A03_SXGW
    {
        public EDU_ZZJX_21_A03_SXGW()
        {
            TGLY = "";
            SQSJ = DateTime.Now;
            SQSHSJ = DateTime.Now;
            SQTGSJ = DateTime.Now;
            TGSHSJ = DateTime.Now;
        }
        public class EDU_ZZJX_21_A03_SXGW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位")]
            public Int32 JobID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录取类型")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任审核状态")]
            public Int32 BZRSHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业审核状态")]
            public Int32 QYSHZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "退岗理由")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TGLY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请时间")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请审核时间")]
            public DateTime SQSHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "申请退岗时间")]
            public DateTime SQTGSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "退岗审核时间")]
            public DateTime TGSHSJ { get; set; }


        }
    }
}
