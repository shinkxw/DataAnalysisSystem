namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A11_DYPJDXJL_metadata))]
    public partial class EDU_ZZXS_25_A11_DYPJDXJL
    {
        public EDU_ZZXS_25_A11_DYPJDXJL()
        {
            FSDXMC = "";
            DHHM = "";
            DXNR = "";
            TJSJ = DateTime.Now;
            FSSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A11_DYPJDXJL_metadata
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
            [Display(Name = "关联学生评分记录")]
            public Int32 GLXSPFJLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送对象名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSDXMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "电话号码")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DHHM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "短信内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发送时间")]
            public DateTime FSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发送状态")]
            public Int32 FSZT { get; set; }


        }
    }
}
