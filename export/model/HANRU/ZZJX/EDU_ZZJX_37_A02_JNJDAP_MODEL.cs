namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_37_A02_JNJDAP_metadata))]
    public partial class EDU_ZZJX_37_A02_JNJDAP
    {
        public EDU_ZZJX_37_A02_JNJDAP()
        {
            KSMC = "";
            KSSJ = new DateTime(1900, 1, 1);
            KSDD = "";
            KSXS = "";
        }
        public class EDU_ZZJX_37_A02_JNJDAP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 JDXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���Եص�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSDD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ѧ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSXS { get; set; }


        }
    }
}
