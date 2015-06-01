namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A54_DFTJJGST_metadata))]
    public partial class EDU_OAXT_50_A54_DFTJJGST
    {
        public EDU_OAXT_50_A54_DFTJJGST()
        {
            STMC = "";
            ZSZDIDLB = "";
            ZSZDMCLB = "";
            ZSDXJDBMJH = "";
            ZSDXJDMCLB = "";
            ZSSJQSSJ = DateTime.Now;
            ZSSJJSSJ = DateTime.Now;
            SDDX = "";
            KCKYHIDLB = "";
            KCKYHXMLB = "";
            ZSKQSJ = DateTime.Now;
            ZSGBSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A54_DFTJJGST_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ݼ�")]
            public Int32 SJJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ͼ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "չʾ�ֶ�ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSZDIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "չʾ�ֶ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSZDMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "չʾ����ڵ���뼯��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSDXJDBMJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "չʾ����ڵ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSDXJDMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "չʾ������ʼʱ��")]
            public DateTime ZSSJQSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "չʾ���ݽ���ʱ��")]
            public DateTime ZSSJJSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ά��")]
            public Int32 SDWZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�ɹ�ѡ��")]
            public Int32 SFKGXZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SDDX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ɲ鿴�û�ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCKYHIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ɲ鿴�û������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCKYHXMLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "չʾ����ʱ��")]
            public DateTime ZSKQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "չʾ�ر�ʱ��")]
            public DateTime ZSGBSJ { get; set; }


        }
    }
}
