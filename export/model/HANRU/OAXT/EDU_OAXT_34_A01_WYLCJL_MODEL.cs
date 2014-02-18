namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_34_A01_WYLCJL_metadata))]
    public partial class EDU_OAXT_34_A01_WYLCJL
    {
        public EDU_OAXT_34_A01_WYLCJL()
        {
            WYBT = "";
            NR = "";
            BZ = "";
            SQRID = "";
            SQSJ = DateTime.Now;
            SHRID = "";
            SHSJ = DateTime.Now;
            SHBZ = "";
            DYSJ = DateTime.Now;
            DYBZ = "";
        }
        public class EDU_OAXT_34_A01_WYLCJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ӡ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WYBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SQRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��˱�ע")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHBZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����б��Ƿ���ʾ")]
            public Int32 SHLBSFXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӡ״̬")]
            public Int32 DYZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӡʱ��")]
            public DateTime DYSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ӡ��ע")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYBZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ӡ�б��Ƿ���ʾ")]
            public Int32 DYLBSFXS { get; set; }


        }
    }
}
