namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_08_01_DADJ_metadata))]
    public partial class EDU_OAXT_08_01_DADJ
    {
        public EDU_OAXT_08_01_DADJ()
        {
            QZH = "";
            ND = "";
            MLH = "";
            AJH = "";
            TM = "";
            ZTC = "";
            QSRQ = new DateTime(1900, 1, 1);
            JZRQ = new DateTime(1900, 1, 1);
            BGQXM = "";
            CFWZ = "";
            DAFLM = "";
        }
        public class EDU_OAXT_08_01_DADJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ȫ�ں�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QZH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ND { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ŀ¼��")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(120)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZTC { get; set; }


            [Display(Name = "��ʼ����")]
            public DateTime QSRQ { get; set; }


            [Display(Name = "��ֹ����")]
            public DateTime JZRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGQXM { get; set; }


            [Display(Name = "�ܼ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MJM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ҳ��")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal YS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal FS { get; set; }


            [Display(Name = "���Ƶ�λ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���λ��")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CFWZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DAFLM { get; set; }


        }
    }
}
