namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_01_A06_ZYWJ_metadata))]
    public partial class EDU_ZYZX_01_A06_ZYWJ
    {
        public EDU_ZYZX_01_A06_ZYWJ()
        {
            ZYBT = "";
            SYDX = "";
            GJZ = "";
            JJ = "";
            LY = "";
            YYZID = "";
            ZYMC = "";
            ZYDX = "";
            ZYLJ = "";
            SLT = "";
            SCSJ = new DateTime(1900, 1, 1);
            SHRID = "";
            SHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZYZX_01_A06_ZYWJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ԴĿ¼")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ö���")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYDX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ؼ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Դ����")]
            public Int32 ZYLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʹ������")]
            public Int32 SYXZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ӵ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ��С")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYDX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ·��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYLJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ļ�����")]
            public Int32 WJLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Դ����")]
            public Int32 ZYPJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ͼ")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SLT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˴�")]
            public Int32 LLRC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����˴�")]
            public Int32 XZRC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����˴�")]
            public Int32 PLRC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����˴�")]
            public Int32 PFRC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Դ״̬")]
            public Int32 ZYZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime SHSJ { get; set; }


        }
    }
}
