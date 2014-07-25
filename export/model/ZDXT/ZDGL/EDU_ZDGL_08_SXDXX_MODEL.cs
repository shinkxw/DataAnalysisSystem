namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZDGL_08_SXDXX_metadata))]
    public partial class EDU_ZDGL_08_SXDXX
    {
        public EDU_ZDGL_08_SXDXX()
        {
            SXDH = "";
            CJYHID = "";
            CJSJ = DateTime.Now;
            SXSJ = DateTime.Now;
            QRSJ = DateTime.Now;
        }
        public class EDU_ZDGL_08_SXDXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���޵���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJYHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime CJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SXSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ȷ��ʱ��")]
            public DateTime QRSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
