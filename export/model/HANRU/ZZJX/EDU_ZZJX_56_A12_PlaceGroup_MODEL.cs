namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_56_A12_PlaceGroup_metadata))]
    public partial class EDU_ZZJX_56_A12_PlaceGroup
    {
        public EDU_ZZJX_56_A12_PlaceGroup()
        {
            PlaceGroupName = "";
            FullPlaceGroupName = "";
        }
        public class EDU_ZZJX_56_A12_PlaceGroup_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "场地组名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PlaceGroupName { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "完整场地组名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FullPlaceGroupName { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "表Record外键")]
            public Int32 RecordID { get; set; }


        }
    }
}
