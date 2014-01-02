namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A04_TYSXHB_metadata))]
    public partial class EDU_ZZXS_17_A04_TYSXHB
    {
        public EDU_ZZXS_17_A04_TYSXHB()
        {
            HBNR = "";
            BZ = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZXS_17_A04_TYSXHB_metadata
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


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "汇报内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HBNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加教师")]
            public Int32 TJJSID { get; set; }


        }
    }
}
