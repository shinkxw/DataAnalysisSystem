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
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ص�")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Place { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ��")]
            public Int32 Counts { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ص�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FullPlaceName { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��PlaceGroup�����")]
            public Int32 PlaceGroupId { get; set; }


        }
    }
}
