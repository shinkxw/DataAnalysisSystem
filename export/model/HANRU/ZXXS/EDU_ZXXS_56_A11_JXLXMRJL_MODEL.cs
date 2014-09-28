namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A11_JXLXMRJL_metadata))]
    public partial class EDU_ZXXS_56_A11_JXLXMRJL
    {
        public EDU_ZXXS_56_A11_JXLXMRJL()
        {
            DJSJ = DateTime.Now;
            BZRTXJL = "";
            JTTXJL = "";
        }
        public class EDU_ZXXS_56_A11_JXLXMRJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������д��¼")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZRTXJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ͥ��д��¼")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTTXJL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����θ���״̬")]
            public Int32 BZRGXZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ͥ����״̬")]
            public Int32 JTGXZT { get; set; }


        }
    }
}
