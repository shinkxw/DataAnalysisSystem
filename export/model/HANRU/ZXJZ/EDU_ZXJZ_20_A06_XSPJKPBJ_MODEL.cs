namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_20_A06_XSPJKPBJ_metadata))]
    public partial class EDU_ZXJZ_20_A06_XSPJKPBJ
    {
        public EDU_ZXJZ_20_A06_XSPJKPBJ()
        {
            BJMC = "";
            BPJGIDLB = "";
            BPJGXMLB = "";
            DYKCMCLB = "";
            SBM = "";
            KQSJ = DateTime.Now;
        }
        public class EDU_ZXJZ_20_A06_XSPJKPBJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 KPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����̹�ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPJGIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����̹������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPJGXMLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ӧ�γ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYKCMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ������")]
            public Int32 YPRS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʶ����")]
            [StringLength(9)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime KQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Զ��ر�ʱ��")]
            public Int32 ZDGBSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
