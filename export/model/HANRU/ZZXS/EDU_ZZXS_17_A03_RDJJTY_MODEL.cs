namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A03_RDJJTY_metadata))]
    public partial class EDU_ZZXS_17_A03_RDJJTY
    {
        public EDU_ZZXS_17_A03_RDJJTY()
        {
            PDYY = "";
            BZ = "";
            TJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_17_A03_RDJJTY_metadata
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
            [Display(Name = "评定原因")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PDYY { get; set; }


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
