namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A03_SXGW_metadata))]
    public partial class EDU_ZZJX_21_A03_SXGW
    {
        public EDU_ZZJX_21_A03_SXGW()
        {
            TGLY = "";
            SQSJ = DateTime.Now;
            SQSHSJ = DateTime.Now;
            SQTGSJ = DateTime.Now;
            TGSHSJ = DateTime.Now;
        }
        public class EDU_ZZJX_21_A03_SXGW_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ")]
            public Int32 JobID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼ȡ����")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������״̬")]
            public Int32 BZRSHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ���״̬")]
            public Int32 QYSHZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�˸�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TGLY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������ʱ��")]
            public DateTime SQSHSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����˸�ʱ��")]
            public DateTime SQTGSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�˸����ʱ��")]
            public DateTime TGSHSJ { get; set; }


        }
    }
}
