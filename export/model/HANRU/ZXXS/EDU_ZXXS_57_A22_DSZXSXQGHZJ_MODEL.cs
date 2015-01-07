namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A22_DSZXSXQGHZJ_metadata))]
    public partial class EDU_ZXXS_57_A22_DSZXSXQGHZJ
    {
        public EDU_ZXXS_57_A22_DSZXSXQGHZJ()
        {
            XYSPCSMB = "";
            ZJTSKJZY = "";
            BXQDNLMB = "";
            XQHJXX = "";
            YXZSDXYWHHD = "";
            HGBXQ = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A22_DSZXSXQGHZJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧҵˮƽ����Ŀ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYSPCSMB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Լ������ռ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJTSKJZY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ�ڵ�Ŭ��Ŀ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BXQDNLMB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ�ڻ���Ϣ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQHJXX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ӡ�������У԰�Ļ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YXZSDXYWHHD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ع˱�ѧ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HGBXQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
