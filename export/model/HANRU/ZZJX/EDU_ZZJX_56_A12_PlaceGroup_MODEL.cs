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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PlaceGroupName { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FullPlaceGroupName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Record���")]
            public Int32 RecordID { get; set; }


        }
    }
}
