namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_30_A02_EXAMROOM_metadata))]
    public partial class EDU_ZZJX_30_A02_EXAMROOM
    {
        public EDU_ZZJX_30_A02_EXAMROOM()
        {
            Name = "";
        }
        public class EDU_ZZJX_30_A02_EXAMROOM_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 RoomID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������������")]
            public Int32 StuCount { get; set; }


        }
    }
}
