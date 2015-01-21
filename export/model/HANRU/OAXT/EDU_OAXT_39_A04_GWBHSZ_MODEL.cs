namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_39_A04_GWBHSZ_metadata))]
    public partial class EDU_OAXT_39_A04_GWBHSZ
    {
        public EDU_OAXT_39_A04_GWBHSZ()
        {
            BHQZ = "";
            BHHZ = "";
        }
        public class EDU_OAXT_39_A04_GWBHSZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ǰ׺")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BHQZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ź�׺")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BHHZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ��ˮ��")]
            public Int32 DQLSH { get; set; }


        }
    }
}
