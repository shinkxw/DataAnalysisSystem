namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A07_MBFPNR_metadata))]
    public partial class EDU_ZXDY_04_A07_MBFPNR
    {
        public EDU_ZXDY_04_A07_MBFPNR()
        {
        }
        public class EDU_ZXDY_04_A07_MBFPNR_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ģ�����ݱ�")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ģ���")]
            public Int32 MBID { get; set; }


            [Display(Name = "������")]
            public Int32 GZR { get; set; }


            [Display(Name = "��λ")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ӧ��Ա��")]
            public Int32 DYRYH { get; set; }


        }
    }
}
