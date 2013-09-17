namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_05_XLZ_metadata))]
    public partial class EDU_ELE_05_XLZ
    {
        public EDU_ELE_05_XLZ()
        {
            NAME = "";
        }
        public class EDU_ELE_05_XLZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "У��")]
            public Int32 XLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "У��������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼ����")]
            public DateTime STARTDAY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public DateTime ENDDAY { get; set; }


            [Display(Name = "�ܼƻ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJH { get; set; }


        }
    }
}
