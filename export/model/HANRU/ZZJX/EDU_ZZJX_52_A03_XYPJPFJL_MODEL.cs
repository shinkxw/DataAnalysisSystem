namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_52_A03_XYPJPFJL_metadata))]
    public partial class EDU_ZZJX_52_A03_XYPJPFJL
    {
        public EDU_ZZJX_52_A03_XYPJPFJL()
        {
            SJ = DateTime.Now;
            BZ = "";
            TJSJ = DateTime.Now;
            XFSQSJ = DateTime.Now;
            XFLY = "";
            XFSPSJ = DateTime.Now;
        }
        public class EDU_ZZJX_52_A03_XYPJPFJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "一级项目")]
            public Int32 YJXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "二级项目")]
            public Int32 EJXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时间")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分申请教师")]
            public Int32 XFSQJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分申请时间")]
            public DateTime XFSQSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "销分理由")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFLY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分审批教师")]
            public Int32 XFSPJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分审批时间")]
            public DateTime XFSPSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程类型")]
            public Int32 KCLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程")]
            public Int32 KCID { get; set; }


        }
    }
}
