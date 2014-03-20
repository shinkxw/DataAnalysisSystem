namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_CFXT_01_A02_KS_metadata))]
    public partial class EDU_CFXT_01_A02_KS
    {
        public EDU_CFXT_01_A02_KS()
        {
            KSMC = "";
            KSKMIDLB = "";
            KSKMMCLB = "";
            CFWZ = "";
            HDXSJG = "";
            HDXXJG = "";
        }
        public class EDU_CFXT_01_A02_KS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���Կ�ĿID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSKMIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���Կ�Ŀ�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSKMMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ַ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CFWZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 CFZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 HDX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������Ͻ��")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDXSJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������½��")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HDXXJG { get; set; }


        }
    }
}
