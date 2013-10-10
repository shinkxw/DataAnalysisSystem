namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_21_A03_QJSQXGJL_metadata))]
    public partial class EDU_OAXT_21_A03_QJSQXGJL
    {
        public EDU_OAXT_21_A03_QJSQXGJL()
        {
            XGYHID = "";
            XGYHXM = "";
            QJLXMC = "";
            QJYY = "";
            KSSJ = new DateTime(1900, 1, 1);
            JSSJ = new DateTime(1900, 1, 1);
            SQSJ = new DateTime(1900, 1, 1);
            SQRID = "";
            BZ = "";
            LCMBMC = "";
            DQBZMC = "";
        }
        public class EDU_OAXT_21_A03_QJSQXGJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�޸��û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�޸��û�����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            public Int32 QJLXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QJLXMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ԭ��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QJYY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal QJTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 SQZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʵ��")]
            public Int32 LCSLID { get; set; }


            [Display(Name = "����ʵ��״̬")]
            public Int32 LCSLZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ģ��")]
            public Int32 LCMBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ģ������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LCMBMC { get; set; }


            [Display(Name = "��ǰ����")]
            public Int32 DQBZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǰ��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DQBZMC { get; set; }


            [Display(Name = "��ǰ�������״̬")]
            public Int32 DQBZSHZT { get; set; }


            [Display(Name = "�����˲���")]
            public Int32 SQRBMID { get; set; }


        }
    }
}
