namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A19_DFPC_metadata))]
    public partial class EDU_OAXT_50_A19_DFPC
    {
        public EDU_OAXT_50_A19_DFPC()
        {
            DFPCMC = "";
            CKSJ = DateTime.Now;
            TJSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A19_DFPC_metadata
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
            [Display(Name = "��ִ���")]
            public Int32 DFDLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֽڵ�")]
            public Int32 DFJDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFPCMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ο�ʱ��")]
            public DateTime CKSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
