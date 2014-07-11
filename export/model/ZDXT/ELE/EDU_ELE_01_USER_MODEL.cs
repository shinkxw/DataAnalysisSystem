namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_USER_metadata))]
    public partial class EDU_ELE_01_USER
    {
        public EDU_ELE_01_USER()
        {
            LOGINNAME = "";
            PWD = "";
            ROLEIDLst = "";
            XM = "";
            XB = "";
            QQ = "";
            DZYJ = "";
            LXDH = "";
            ZJDLSJ = DateTime.Now;
            YHCJSJ = DateTime.Now;
        }
        public class EDU_ELE_01_USER_metadata
        {
            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LOGINNAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PWD { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�״̬")]
            public Int32 STATUS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û����")]
            public Int32 USERTYPE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�")]
            public Int32 USERID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û���ɫ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ROLEIDLst { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ա�")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "QQ")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ʼ�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ϵ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���һ�ε�¼ʱ��")]
            public DateTime ZJDLSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼�ɹ�����")]
            public Int32 DLCGCS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�����ʱ��")]
            public DateTime YHCJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�����")]
            public Int32 YHRY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�û�����")]
            public Int32 YHJF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 BMID { get; set; }


        }
    }
}
