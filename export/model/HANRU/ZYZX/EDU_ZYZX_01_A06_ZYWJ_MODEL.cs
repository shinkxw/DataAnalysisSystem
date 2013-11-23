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
            BZ = "";
            GJZ = "";
            YYZID = "";
            ZYNR = "";
            FJMC = "";
            FJDX = "";
            FJLJ = "";
            SCSJ = new DateTime(1900, 1, 1);
            SYNJ = "";
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
            [Display(Name = "��Դ����")]
            public Int32 ZYFLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ԴĿ¼")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ؼ���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ӵ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YYZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Դ�������")]
            public Int32 ZYLLLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ļ�����")]
            public Int32 WJLXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������С")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJDX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����·��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJLJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Դ״̬")]
            public Int32 ZYZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Դ����")]
            public Int32 ZYPJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϴ�ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����꼶")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYNJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ��")]
            public Int32 SYXK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˴�")]
            public Int32 LLRC { get; set; }


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
