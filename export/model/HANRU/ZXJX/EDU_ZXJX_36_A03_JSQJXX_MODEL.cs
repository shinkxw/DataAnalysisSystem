namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_36_A03_JSQJXX_metadata))]
    public partial class EDU_ZXJX_36_A03_JSQJXX
    {
        public EDU_ZXJX_36_A03_JSQJXX()
        {
            QJKSSJ = DateTime.Now;
            QJJSSJ = DateTime.Now;
            QJYY = "";
            SQSJ = DateTime.Now;
            BZ = "";
            SHRID = "";
            SHSJ = DateTime.Now;
        }
        public class EDU_ZXJX_36_A03_JSQJXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ٽ�ʦ")]
            public Int32 QJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ�������")]
            public Int32 JSQJLXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ٿ�ʼʱ��")]
            public DateTime QJKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ٽ���ʱ��")]
            public DateTime QJJSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 CLZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ̴���ʽ")]
            public Int32 KCCLFS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QJYY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime SQSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


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
