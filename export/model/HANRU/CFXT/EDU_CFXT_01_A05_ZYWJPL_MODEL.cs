namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A05_ZYWJPL_metadata))]
    public partial class EDU_CFXT_01_A05_ZYWJPL
    {
        public EDU_CFXT_01_A05_ZYWJPL()
        {
            JG = "";
        }
        public class EDU_CFXT_01_A05_ZYWJPL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 PL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������ֵ")]
            public Int32 PLRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Сֵ")]
            public Int32 PLSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JG { get; set; }


        }
    }
}
