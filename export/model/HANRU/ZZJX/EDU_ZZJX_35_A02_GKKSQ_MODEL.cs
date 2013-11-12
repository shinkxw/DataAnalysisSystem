namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_35_A02_GKKSQ_metadata))]
    public partial class EDU_ZZJX_35_A02_GKKSQ
    {
        public EDU_ZZJX_35_A02_GKKSQ()
        {
            KCMC = "";
            SKSJ = new DateTime(1900, 1, 1);
            SKDD = "";
            KCJJ = "";
            SQRID = "";
            SHRID = "";
        }
        public class EDU_ZZJX_35_A02_GKKSQ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ͽ�ʱ��")]
            public DateTime SKSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ͽεص�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKDD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̼��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����С��")]
            public Int32 TKXZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ʾ")]
            public Int32 SFGS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


        }
    }
}
