namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXFC_08_01_XSSS_metadata))]
    public partial class EDU_ZXFC_08_01_XSSS
    {
        public EDU_ZXFC_08_01_XSSS()
        {
            SSLBM = "";
            FJBM = "";
            RZXB = "";
            SFKY = "";
            SSM = "";
        }
        public class EDU_ZXFC_08_01_XSSS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����¥")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����¥���")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSLBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ס�Ա�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZXB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ס����")]
            [Range(typeof(decimal), "0", "99")]
            public decimal KZRS { get; set; }


            [Display(Name = "����˿�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLDK { get; set; }


            [Display(Name = "��װ���ӻ�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AZDSJ { get; set; }


            [Display(Name = "�绰�˿�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DHDK { get; set; }


            [Display(Name = "�绰����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DHHM { get; set; }


            [Display(Name = "ˮ�����")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal SBDS { get; set; }


            [Display(Name = "������")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal DBDS { get; set; }


            [Display(Name = "���ᱸע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSBZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����¥��")]
            public Int32 SZLZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSM { get; set; }


        }
    }
}
