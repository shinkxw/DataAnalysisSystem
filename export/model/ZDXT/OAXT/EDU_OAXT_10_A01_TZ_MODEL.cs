namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_10_A01_TZ_metadata))]
    public partial class EDU_OAXT_10_A01_TZ
    {
        public EDU_OAXT_10_A01_TZ()
        {
            FSRID = "";
            BT = "";
            NR = "";
            TJRQ = DateTime.Now;
            JSRIDLB = "";
            JSRMZLB = "";
            YYDRMZLB = "";
        }
        public class EDU_OAXT_10_A01_TZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "֪ͨ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
            public Int32 FSRLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Display(Name = "����")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            public DateTime TJRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 JSRS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRMZLB { get; set; }


            [Display(Name = "���Ķ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYDRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���Ķ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYDRMZLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 FSZT { get; set; }


        }
    }
}
