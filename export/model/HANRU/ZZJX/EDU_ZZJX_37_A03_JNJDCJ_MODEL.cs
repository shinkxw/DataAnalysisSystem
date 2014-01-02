namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_37_A03_JNJDCJ_metadata))]
    public partial class EDU_ZZJX_37_A03_JNJDCJ
    {
        public EDU_ZZJX_37_A03_JNJDCJ()
        {
            DJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_37_A03_JNJDCJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 JDXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ܼ�������")]
            public Int32 JNJDAPID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�")]
            public Int32 CJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽǽ�ʦ")]
            public Int32 DJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ǽ�ʱ��")]
            public DateTime DJSJ { get; set; }


        }
    }
}
