namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_22_A04_ZSGLXSXX_metadata))]
    public partial class EDU_ZZXS_22_A04_ZSGLXSXX
    {
        public EDU_ZZXS_22_A04_ZSGLXSXX()
        {
            XM = "";
            XB = "";
            SFZX = "";
            LXDH = "";
            TC = "";
            BZ = "";
            LRSJ = DateTime.Now;
            LRR = "";
            LQSJ = DateTime.Now;
            LQR = "";
            BH = "";
        }
        public class EDU_ZZXS_22_A04_ZSGLXSXX_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ա�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ�סУ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ϵ�绰")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵѧУ")]
            public Int32 BYXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal YW { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӣ��")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal YY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal KX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal TY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵ��ӷ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SYJF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܷ�")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�س�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��һ־Ը")]
            public Int32 DYZYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ڶ�־Ը")]
            public Int32 DEZYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����־Ը")]
            public Int32 DSZYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʱ")]
            public Int32 LSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼��ʱ��")]
            public DateTime LRSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "¼����")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LRR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼ȡʱ��")]
            public DateTime LQSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "¼ȡ��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LQR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼ȡרҵ")]
            public Int32 LQZYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BH { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɷѽ��")]
            [Range(typeof(decimal), "0", "9999999")]
            public decimal JFJE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


        }
    }
}
