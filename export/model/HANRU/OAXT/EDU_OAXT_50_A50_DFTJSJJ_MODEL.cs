namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A50_DFTJSJJ_metadata))]
    public partial class EDU_OAXT_50_A50_DFTJSJJ
    {
        public EDU_OAXT_50_A50_DFTJSJJ()
        {
            SJJMC = "";
            DFDXZMC = "";
            TJDXJDBMJH = "";
            TJDXJDMCLB = "";
            QSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            DQPCBH = "";
        }
        public class EDU_OAXT_50_A50_DFTJSJJ_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ݼ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJJMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֶ�����")]
            public Int32 DFDXZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ֶ���������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFDXZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͳ�ƶ���ڵ���뼯��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJDXJDBMJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ͳ�ƶ���ڵ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJDXJDMCLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime QSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������״̬")]
            public Int32 SJSCZT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǰ���α��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DQPCBH { get; set; }


        }
    }
}
