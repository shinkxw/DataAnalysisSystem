namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_10_A03_CPXXSJ_metadata))]
    public partial class EDU_ZZJX_10_A03_CPXXSJ
    {
        public EDU_ZZJX_10_A03_CPXXSJ()
        {
            XXMC = "";
            XXNR = "";
            SFFB = "";
            SCSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_10_A03_CPXXSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "信息名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "信息内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否发布")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFFB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传教师")]
            public Int32 SCJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


        }
    }
}
