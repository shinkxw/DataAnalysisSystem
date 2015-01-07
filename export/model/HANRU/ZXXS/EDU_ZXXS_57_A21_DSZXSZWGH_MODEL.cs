namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A21_DSZXSZWGH_metadata))]
    public partial class EDU_ZXXS_57_A21_DSZXSZWGH
    {
        public EDU_ZXXS_57_A21_DSZXSZWGH()
        {
            RSMB = "";
            WLSNDW = "";
            WGXQDZY = "";
            WXWDCS = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A21_DSZXSZWGH_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ŀ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RSMB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "δ��ʮ�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLSNDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ҹ���Ȥ��ְҵ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WGXQDZY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������ĳ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WXWDCS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
