namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_05_A02_KSKM_metadata))]
    public partial class EDU_ZXJX_05_A02_KSKM
    {
        public EDU_ZXJX_05_A02_KSKM()
        {
            KCMC = "";
            NJMC = "";
            BJMC = "";
        }
        public class EDU_ZXJX_05_A02_KSKM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 SSKSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ�οα��")]
            public Int32 JSRKID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶����")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ��ܷ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal CJZF { get; set; }


        }
    }
}
