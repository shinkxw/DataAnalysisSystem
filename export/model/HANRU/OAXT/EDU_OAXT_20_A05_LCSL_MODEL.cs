namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_20_A05_LCSL_metadata))]
    public partial class EDU_OAXT_20_A05_LCSL
    {
        public EDU_OAXT_20_A05_LCSL()
        {
            SQRID = "";
            SPRID = "";
            SQSJ = new DateTime(1900, 1, 1);
            YXQ = new DateTime(1900, 1, 1);
            FJ = "";
            BZ = "";
        }
        public class EDU_OAXT_20_A05_LCSL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ģ��")]
            public Int32 LCMBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SPRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ����")]
            public Int32 DQBZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ����ִ��״̬")]
            public Int32 DQBZZXZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ч��")]
            public DateTime YXQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ��״̬")]
            public Int32 SLZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 LXID { get; set; }


            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXMC { get; set; }


        }
    }
}
