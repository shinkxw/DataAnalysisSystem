namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_08_A02_XSZSJL_metadata))]
    public partial class EDU_ZXFC_08_A02_XSZSJL
    {
        public EDU_ZXFC_08_A02_XSZSJL()
        {
            NJMC = "";
            BJMC = "";
            XSXM = "";
            RZSJ = DateTime.Now;
        }
        public class EDU_ZXFC_08_A02_XSZSJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����¥")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ")]
            public Int32 CWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶����")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��סʱ��")]
            public DateTime RZSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�����")]
            public Int32 SFTS { get; set; }


        }
    }
}
