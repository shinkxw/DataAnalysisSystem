namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_30_A01_CLASSROOM_metadata))]
    public partial class EDU_ZZJX_30_A01_CLASSROOM
    {
        public EDU_ZZJX_30_A01_CLASSROOM()
        {
            Name = "";
            Place = "";
            FullPlaceName = "";
        }
        public class EDU_ZZJX_30_A01_CLASSROOM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教室名称")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "地点")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Place { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "座位数")]
            public Int32 Counts { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "完整地点名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FullPlaceName { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "表PlaceGroup的外键")]
            public Int32 PlaceGroupId { get; set; }


        }
    }
}
