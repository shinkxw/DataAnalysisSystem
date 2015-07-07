namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A12_CWJBDXX_metadata))]
    public partial class EDU_ZZJG_25_A12_CWJBDXX
    {
        public EDU_ZZJG_25_A12_CWJBDXX()
        {
            JBDH = "";
            JBDLX = "";
            JBDSJ = DateTime.Now;
        }
        public class EDU_ZZJG_25_A12_CWJBDXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ᱨ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ᱨ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ᱨ��ʱ��")]
            public DateTime JBDSJ { get; set; }


        }
    }
}
