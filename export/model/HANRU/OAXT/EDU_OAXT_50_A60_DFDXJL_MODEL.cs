namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A60_DFDXJL_metadata))]
    public partial class EDU_OAXT_50_A60_DFDXJL
    {
        public EDU_OAXT_50_A60_DFDXJL()
        {
            BDFDXBM = "";
            BDFDXMC = "";
            DHHM = "";
            DXNR = "";
            TJSJ = DateTime.Now;
            FSSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A60_DFDXJL_metadata
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
