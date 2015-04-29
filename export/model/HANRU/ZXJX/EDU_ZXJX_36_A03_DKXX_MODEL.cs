namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A03_DKXX_metadata))]
    public partial class EDU_ZXJX_36_A03_DKXX
    {
        public EDU_ZXJX_36_A03_DKXX()
        {
            XDKRQ = DateTime.Now;
            XDKKCID = "";
        }
        public class EDU_ZXJX_36_A03_DKXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ν�ʦ")]
            public Int32 XDKJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
            public DateTime XDKRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ʱ��")]
            public Int32 XDKSDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����νڴ�")]
            public Int32 XDKJCID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ογ�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XDKKCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ν�ʦ")]
            public Int32 DKJSID { get; set; }


        }
    }
}
