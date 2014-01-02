namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_23_A02_GWSQXGJL_metadata))]
    public partial class EDU_OAXT_23_A02_GWSQXGJL
    {
        public EDU_OAXT_23_A02_GWSQXGJL()
        {
            XGYHID = "";
            XGYHXM = "";
            GWBT = "";
            GWNR = "";
            FJ = "";
            SJRIDLB = "";
            SJRXMLB = "";
            YDQK = "";
            SQSJ = DateTime.Now;
            SQRID = "";
            BZ = "";
            SWDW = "";
            LCMBMC = "";
            DQBZMC = "";
        }
        public class EDU_OAXT_23_A02_GWSQXGJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
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
            [Display(Name = "���ı���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GWNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ռ���ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ռ��������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJRXMLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ķ����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YDQK { get; set; }


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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ĵ�λ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SWDW { get; set; }


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
