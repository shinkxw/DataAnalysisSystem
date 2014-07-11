namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_24_A02_YCSQXGJL_metadata))]
    public partial class EDU_OAXT_24_A02_YCSQXGJL
    {
        public EDU_OAXT_24_A02_YCSQXGJL()
        {
            XGYHID = "";
            XGYHXM = "";
            YCYY = "";
            KSSJ = DateTime.Now;
            SQSJ = DateTime.Now;
            SQRID = "";
            BZ = "";
            LCMBMC = "";
            DQBZMC = "";
            JSSJ = DateTime.Now;
        }
        public class EDU_OAXT_24_A02_YCSQXGJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ó������")]
            public Int32 SQID { get; set; }


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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ó�ԭ��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YCYY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            public Int32 WCRS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʹ������")]
            public Int32 SYTS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 SQZT { get; set; }


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


            [Required(ErrorMessage = "����")]
            [Display(Name = "���복��")]
            public Int32 SQCLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


        }
    }
}