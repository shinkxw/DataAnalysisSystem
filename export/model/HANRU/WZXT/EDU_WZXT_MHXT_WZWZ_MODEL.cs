namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_WZXT_MHXT_WZWZ_metadata))]
    public partial class EDU_WZXT_MHXT_WZWZ
    {
        public EDU_WZXT_MHXT_WZWZ()
        {
            TITLE = "";
            PUBLISHERNAME = "";
            AUTHOR = "";
        }
        public class EDU_WZXT_MHXT_WZWZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TYPENAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ŀ")]
            public Int32 LMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PUBLISHERNAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUTHOR { get; set; }


            [Display(Name = "���߲���")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUTHORDEPART { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime PUBLISHDATE { get; set; }


            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CONTENT { get; set; }


            [Display(Name = "����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Display(Name = "ͼƬ")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IMAGEURL { get; set; }


            [Display(Name = "������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ATTACHMENTNAME { get; set; }


            [Display(Name = "����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ATTACHMENT { get; set; }


            [Display(Name = "�����")]
            public Int32 CHICKNUB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���״̬")]
            public Int32 AUDITSTATU { get; set; }


            [Display(Name = "�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUDITOR { get; set; }


            [Display(Name = "�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUDITORNAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime AUDITTIME { get; set; }


            [Display(Name = "��ע")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String REMARK { get; set; }


            [Display(Name = "ժҪ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SUMMARY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���ʾ")]
            public Int32 DISPLAYTYPE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 OPENFLAG { get; set; }


            [Display(Name = "���Ȩ��")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LLQX { get; set; }


        }
    }
}
